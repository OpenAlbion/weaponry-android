import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class HistoryView extends StatelessWidget {
  final String text;
  final Function onTap;
  const HistoryView({
    required this.text,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
      child: SizedBox(
        child: InkWell(
          onTap: () {
            onTap();
          },
          child: Container(
            height: 35,
            padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MARGIN_SMALL),
              border: Border.all(
                color: get80PercentColor(context).withOpacity(0.2),
              ),
            ),
            child: Center(
              child: InterText(
                text,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
