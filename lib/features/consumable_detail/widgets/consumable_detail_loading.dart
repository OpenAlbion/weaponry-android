import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class ConsumableDetailLoading extends StatelessWidget {
  const ConsumableDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: getCardColor(context),
      highlightColor: Colors.grey.withOpacity(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MARGIN_MEDIUM_2),
          SizedBox(
            height: HEIGHT_SUB_CATEGORY,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              padding: EdgeInsets.only(left: MARGIN_MEDIUM_2),
              itemBuilder: ((context, index) => Container(
                    margin: EdgeInsets.only(right: MARGIN_MEDIUM_2),
                    height: HEIGHT_SUB_CATEGORY,
                    width: 70,
                    decoration: BoxDecoration(
                        color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                  )),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            height: HEIGHT_SUB_CATEGORY,
            width: 140,
            decoration:
                BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            height: HEIGHT_SUB_CATEGORY,
            width: double.infinity,
            decoration:
                BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            height: HEIGHT_SUB_CATEGORY,
            width: double.infinity,
            decoration:
                BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            height: HEIGHT_SUB_CATEGORY,
            width: double.infinity,
            decoration:
                BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Container(
            margin: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            height: HEIGHT_SUB_CATEGORY,
            width: double.infinity,
            decoration:
                BoxDecoration(color: whiteText, borderRadius: BorderRadius.circular(MARGIN_SMALL)),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: MARGIN_LARGE),
            child: DottedLine(dashColor: whiteText),
          ),
        ],
      ),
    );
  }
}
