// ignore_for_file: use_build_context_synchronously

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/persistent/shared_preference.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/utils/dialog_utils.dart';
import 'package:shake/shake.dart';

class AppStartProvider extends BasedProvider {
  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();
  final SharedPreference _preference = SharedPreference();

  // bug title list
  List<String> _bugCategoryList = [];
  List<String> get bugCategoryList => _bugCategoryList;
  bool isShaking = false;

  late ShakeDetector _detector;

  void initializeShaker(BuildContext context) {
    _bugCategoryList = ["Item Missing", "Item Wrong Info", "Other"];
    _detector = ShakeDetector.autoStart(
        minimumShakeCount: 2,
        onPhoneShake: () async {
          var shakeEnabled = await _preference.getShakeToReport();
          if (shakeEnabled && !isShaking) {
            isShaking = true;
            DialogUtils.showDebugReport(
                context: context,
                titleList: _bugCategoryList,
                onDimissied: () {
                  isShaking = false;
                },
                onSubmited: (report) {
                  reportBug(report: report);
                });
          }
        });
  }

  void reportToFirebase(String message) {
    _fireRepository.reportToFirebase(message);
  }

  void reportBug({required ReportVO report}) async {
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, String> data = await _repository.reportBug(report: report);
    data.fold((L) {
      appError = L;
    }, (R) {
      setNotifyMessage("Thanks For Your Report.");
    });
  }

  @override
  void dispose() {
    _detector.stopListening();
    super.dispose();
  }
}
