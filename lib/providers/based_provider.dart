import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BasedProvider with ChangeNotifier {
  ViewState _state = ViewState.LOADING;

  ViewState get state => _state;
  bool _disposed = false;

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  void notifyListeners() {
    if (!_disposed) {
      super.notifyListeners();
    }
  }

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  void setNotifyMessage(String message){
    Fluttertoast.showToast(msg: message);
    notifyListeners();
  }

  Future<bool> handleConnectionView({bool isReplaceView = false}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      if (isReplaceView) {
        setState(ViewState.NO_INTERNET);
      } else {
        setNotifyMessage("No Internet");
      }
      return true;
    }else {
      return false;
    }
  }

  Future handleErrorView(bool isReplaceView) async {
    if (isReplaceView) {
      setState(ViewState.ERROR);
    } else {
      setNotifyMessage("Something Wrong");
    }
  }

}

enum ViewState{
  NONE,
  LOADING,
  COMPLETE,
  ERROR,
  NO_INTERNET,
}
