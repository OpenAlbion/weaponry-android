import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SimpleTextField extends StatelessWidget {
  final String hint;
  final Function(String text) onChanged;
  const SimpleTextField({super.key, required this.hint,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: TextField(
        cursorColor: primaryRed,
        maxLines: 10,
        maxLength: 250,
        style: TextStyle(fontSize: TEXT_REGULAR),
        onChanged: (value) {
          onChanged(value);
        },
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: getCardColor(context),
          hintText: hint,
          hintStyle: TextStyle(fontSize: 14, color: get80PercentColor(context).withOpacity(0.4)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(MARGIN_MEDIUM), borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
