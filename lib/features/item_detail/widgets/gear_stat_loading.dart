import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:shimmer/shimmer.dart';

class GearStatLoading extends StatelessWidget {
  const GearStatLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: getCardColor(context),
      highlightColor: Colors.grey.withOpacity(0.4),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                      color: getCardColor(context), borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                ),
                Container(
                  width: 120,
                  height: 20,
                  decoration: BoxDecoration(
                      color: getCardColor(context), borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                )
              ],
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SizedBox(
            height: 70,
            child: ListView.builder(
                itemCount: 2,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                    child: Column(            
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: getCardColor(context),
                                      borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                                ),
                                SizedBox(width: MARGIN_MEDIUM_2),
                                Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: getCardColor(context),
                                      borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: getCardColor(context),
                                      borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                                ),
                                SizedBox(width: MARGIN_MEDIUM_2),
                                Container(
                                  width: 80,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: getCardColor(context),
                                      borderRadius: BorderRadius.circular(MARGIN_SMALL)),
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(
                          color: getCardColor(context),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
