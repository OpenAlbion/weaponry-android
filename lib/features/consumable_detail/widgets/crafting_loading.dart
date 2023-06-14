import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class CraftingLoading extends StatelessWidget {
  const CraftingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: getCardColor(context),
      highlightColor: Colors.grey.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MARGIN_MEDIUM),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: HEIGHT_SUB_CATEGORY,
                  width: 120,
                  decoration:
                      BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                ),
                Container(
                  height: HEIGHT_SUB_CATEGORY,
                  width: 120,
                  decoration:
                      BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                ),
              ],
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            Container(
              height: 200,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            Container(
              height: HEIGHT_SUB_CATEGORY,
              width: 120,
              decoration:
                  BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            Container(
              height: 200,
              width: double.infinity,
              decoration:
                  BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
            ),
          ],
        ),
      ),
    );
  }
}
