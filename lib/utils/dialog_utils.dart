import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class DialogUtils {
  static YYDialog YYTicketWinDialog(List<String> prizeList, BuildContext context, Function onDimissed) {
    return YYDialog().build()
      ..width = 300
      ..backgroundColor = Colors.black.withOpacity(0.8)
      ..borderRadius = 10.0
      ..showCallBack = () {
        print("showCallBack invoke");
      }
      ..dismissCallBack = () {
        onDimissed();
        print("dismissCallBack invoke");
      }
      ..widget(Padding(
        padding: EdgeInsets.only(top: 21),
        child: Image.asset(
          'assets/images/app_coin.png',
          width: 38,
          height: 38,
        ),
      ))
      ..widget(Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          "Your Ticket Won - ",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ))
      ..widget(Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Column(
            children: prizeList.map((prize) {
          return Text('');
        }).toList()),
      ))
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      }
      ..show();
  }

  static YYDialog YYTicketLostDialog(Function onDimissed) {
    return YYDialog().build()
      ..width = 300
      ..backgroundColor = Colors.black.withOpacity(0.8)
      ..borderRadius = 10.0
      ..showCallBack = () {
        print("showCallBack invoke");
      }
      ..dismissCallBack = () {
        print("dismissCallBack invoke");
        onDimissed();
      }
      ..widget(Padding(
        padding: EdgeInsets.only(top: 21),
        child: Image.asset(
          'assets/images/app_coin.png',
          width: 38,
          height: 38,
        ),
      ))
      ..widget(Padding(
        padding: EdgeInsets.only(top: 10, bottom: 20),
        child: Text(
          "Better Luck Next Time :)",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ))
      ..animatedFunc = (child, animation) {
        return ScaleTransition(
          child: child,
          scale: Tween(begin: 0.0, end: 1.0).animate(animation),
        );
      }
      ..show();
  }
}
