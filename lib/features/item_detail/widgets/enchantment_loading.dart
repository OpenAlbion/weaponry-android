import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class EncahntmentLoading extends StatelessWidget {
  const EncahntmentLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: getCardColor(context),
      highlightColor: Colors.grey.withOpacity(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Container(
              width: 120,
              height: 20,
              decoration: BoxDecoration(
                  color: getCardColor(context), borderRadius: BorderRadius.circular(MARGIN_SMALL)),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SizedBox(
            height: 75,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Container(
                width: 75,
                height: 75,
                margin: EdgeInsets.only(left: MARGIN_MEDIUM_2),
                decoration: BoxDecoration(
                    color: getCardColor(context), borderRadius: BorderRadius.circular(MARGIN_SMALL)),
              );
            }),
          )
        ],
      ),
    );
  }
}
