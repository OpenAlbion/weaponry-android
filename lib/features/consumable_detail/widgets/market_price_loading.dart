import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class MarketPriceLoading extends StatelessWidget {
  const MarketPriceLoading({super.key});

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
            Container(
              height: HEIGHT_SUB_CATEGORY,
              width: 120,
              decoration:
                  BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
            ),
            SizedBox(height: MARGIN_MEDIUM_2),
            BlockRow(),
            SizedBox(height: MARGIN_MEDIUM),
            Divider(color: whiteText, thickness: 1),
            SizedBox(height: MARGIN_MEDIUM),
            BlockRow(),
            SizedBox(height: MARGIN_MEDIUM_2),
            BlockRow(),
            SizedBox(height: MARGIN_MEDIUM_2),
            BlockRow(),
            SizedBox(height: MARGIN_MEDIUM_2),
            BlockRow(),
            SizedBox(height: MARGIN_MEDIUM_2),
            BlockRow(),
          ],
        ),
      ),
    );
  }
}

class BlockRow extends StatelessWidget {
  const BlockRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmallBlock(),
        SmallBlock(),
        SmallBlock(),
      ],
    );
  }
}

class SmallBlock extends StatelessWidget {
  const SmallBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HEIGHT_SUB_CATEGORY,
      width: 95,
      decoration: BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
    );
  }
}
