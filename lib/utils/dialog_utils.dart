import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/global/simple_dropdown.dart';
import 'package:openalbion_weaponry/features/global/simple_textfield.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  static YYDialog showDebugReport(
      {required BuildContext context, required List<String> titleList, required Function onDimissed}) {
                              var yyDialog = YYDialog();

    return yyDialog.build()
      ..width = 320
      ..backgroundColor = Theme.of(context).scaffoldBackgroundColor
      ..borderRadius = MARGIN_MEDIUM
      ..showCallBack = () {}
      ..dismissCallBack = () {}
      ..widget(Padding(
        padding: const EdgeInsets.symmetric(vertical: MARGIN_MEDIUM_2, horizontal: MARGIN_MEDIUM_2),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InterText(AppLocalizations.of(context)!.bug_report,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: TEXT_REGULAR_2X)),
              SizedBox(height: MARGIN_MEDIUM),
              Divider(height: MARGIN_MEDIUM_2),
              InterText(
                AppLocalizations.of(context)!.bug_category,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: MARGIN_MEDIUM_2),
              SimpleDropDown(
                  itemList: titleList,
                  onSelected: (item) {
                    debugPrint(item);
                  }),
              SizedBox(height: MARGIN_MEDIUM_2),
              InterText(AppLocalizations.of(context)!.bug_detail,
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: MARGIN_MEDIUM_2),
              SimpleTextField(hint: 'In axe section, I didn\'t find battle axe.', onChanged: (text) {}),
              SizedBox(height: MARGIN_MEDIUM_2),
              InterText(AppLocalizations.of(context)!.bug_note,
                  style: TextStyle(fontWeight: FontWeight.w600)),
              SizedBox(height: MARGIN_MEDIUM),
              InterText(
                AppLocalizations.of(context)!.bug_note_detail,
                style: TextStyle(fontSize: TEXT_REGULAR),
              ),
              SizedBox(height: MARGIN_LARGE),
              Row(
                children: [
                  Spacer(),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateColor.resolveWith((states) => blackBackground.withOpacity(0.1)),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
                        ),
                      ),
                    ),
                    onPressed: () {
                      yyDialog.dismiss();
                    },
                    child: InterText("Cancel"),
                  ),
                  SizedBox(width: MARGIN_MEDIUM_2),
                  FilledButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(primaryRed),
                        shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(MARGIN_MEDIUM)))),
                    onPressed: () {},
                    child: InterText(
                      "Submit",
                      style: TextStyle(color: whiteText, fontSize: TEXT_REGULAR - 1),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ))
      // ..animatedFunc = (child, animation) {
      //   return ScaleTransition(
      //     scale: Tween(begin: 0.0, end: 1.0).animate(animation),
      //     child: child,
      //   );
      // }
      ..animatedFunc = (child, animation) {
        return FadeTransition(
          opacity: Tween(begin: 0.0, end: 1.0).animate(animation),
          child: child,
        );
      }
      ..show();
  }
}
