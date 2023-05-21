
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class DashBorderText extends StatelessWidget {
  final String text;
  const DashBorderText({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [5,1],
      color: get80PercentColor(context).withOpacity(0.2),
      radius: Radius.circular(MARGIN_SMALL),
      borderType: BorderType.RRect,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MARGIN_MEDIUM_2),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
            child: InterText(text),
          ),
        ),
      ),
    );
  }
}
