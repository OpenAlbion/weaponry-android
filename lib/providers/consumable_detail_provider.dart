
import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class ConsumableDetailProvider extends BasedProvider{
  List<EnchantmentVO> _enchanmentList = [];
  List<EnchantmentVO> get enchanmentList => _enchanmentList;

  late EnchantmentVO _selectedEnchantment;
  EnchantmentVO get selectedEnchantment => _selectedEnchantment;

    AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();

    void getItemDetail(String type, int id) async {
    setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<EnchantmentVO>> data = await _repository.getItemDetailById(type, id);
    data.fold((L) {
      appError = L;
      print(appError);
      setState(ViewState.ERROR);
    }, (R) {
      _enchanmentList = R;
      if (_enchanmentList.isNotEmpty) {
      _selectedEnchantment = _enchanmentList.first;
      }
      setState(ViewState.COMPLETE);
    });
  }

    void selectEnchantment(EnchantmentVO enchantmentVO) {
    _selectedEnchantment = enchantmentVO;
    notifyListeners();
  }
}