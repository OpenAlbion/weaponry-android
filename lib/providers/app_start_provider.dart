import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/report_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class AppStartProvider extends BasedProvider {
  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();

  // bug title list
  List<String> _bugCategoryList = [];
  List<String> get bugCategoryList => _bugCategoryList;

  AppStartProvider() {
    _getBugCategoryList();
  }

  void _getBugCategoryList() async {
    await Future.delayed(Duration(seconds: 3));
    _bugCategoryList = ["Category A", "Category B"];
    notifyListeners();
  }

  void reportBug({required ReportVO report}) async {
    if (await handleConnectionView(isReplaceView: false)) {
      // setNotifyMessage("No Internet Connection");
      return;
    }
    // Either<AppError, String> data = await _repository.reportBug(report: report);
    // data.fold((L) {
    //   appError = L;

    // }, (R) {

    // });
    await Future.delayed(Duration(seconds: 3));
    setNotifyMessage("Thanks For Your Report.");
  }
}
