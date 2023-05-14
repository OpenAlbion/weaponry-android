import 'package:dartz/dartz.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/category_vo.dart';
import 'package:openalbion_weaponry/network/repository/network_repository.dart';
import 'package:openalbion_weaponry/network/repository/network_repository_impl.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';

class BasedDrawerProvider extends BasedProvider {
  List<CategoryVO> _categoryList = [];
  List<CategoryVO> get categoryList => _categoryList;
  String _versionName = '';
  String get versionName => _versionName;
  AppError? appError;
  final NetworkRepository _repository = NetworkRepositoryImpl();

  BasedDrawerProvider() {
    _getVersion();
    _getCategoryList();
  }

  void _getCategoryList() async {
    setState(ViewState.LOADING);
    if (await handleConnectionView(isReplaceView: false)) {
      return;
    }
    Either<AppError, List<CategoryVO>> data = await _repository.getCategoryList();
    data.fold((L) {
      appError = L;
      setState(ViewState.ERROR);
    }, (R) {
      _categoryList = R;
      setState(ViewState.COMPLETE);
    });
  }

  void _getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    _versionName = packageInfo.version;
    print(_versionName);
  }
}
