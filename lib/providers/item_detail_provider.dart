import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/quality_vo.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';
import 'package:openalbion_weaponry/data/vos/spell_vo.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository.dart';
import 'package:openalbion_weaponry/network/firebase/firebase_analytics_repository_impl.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';

class ItemDetailProvider extends BasedProvider {
  List<EnchantmentVO> _enchanmentList = [];
  List<EnchantmentVO> get enchanmentList => _enchanmentList;

  late EnchantmentVO _selectedEnchantment;
  EnchantmentVO get selectedEnchantment => _selectedEnchantment;

  late QualityVO _selectedQuality;
  QualityVO get selectedQuality => _selectedQuality;

  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();
  final FirebaseAnalyticsRepository _fireRepository = FirebaseAnalyticsRepositoryImpl();

  List<SlotVO> _slotList = [];
  List<SlotVO> get slotList => _slotList;

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
      _selectedEnchantment = _enchanmentList.first;
      _selectedQuality = _selectedEnchantment.stats.first;

      _getSpellDetail(type, id);
      setState(ViewState.COMPLETE);
    });
  }

  void selectEnchantment(EnchantmentVO enchantmentVO) {
    _selectedEnchantment = enchantmentVO;
    _selectedQuality = enchantmentVO.stats.first;
    notifyListeners();
  }

  void selectQuality(QualityVO qualityVO) {
    _selectedQuality = qualityVO;
    notifyListeners();
  }

  void _getSpellDetail(String type, int id) async {
    Either<AppError, List<SlotVO>> data = await _repository.getSpellDetailById(type, id);
    data.fold((L) {
      appError = L;
      print(appError);
      setState(ViewState.ERROR);
    }, (R) {
      _slotList = R;
      setState(ViewState.COMPLETE);
    });
  }
}
