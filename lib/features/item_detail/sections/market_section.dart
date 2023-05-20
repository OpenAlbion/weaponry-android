import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/quality_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/market_price_provider.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class MarketSection extends StatelessWidget {
  const MarketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketPriceProvider>(builder: (context, provider, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: provider.marketPriceList.isNotEmpty &&
                provider.marketPriceList.where((element) => element.sellPriceMin == 0).toList().length !=
                    6
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MARGIN_MEDIUM_2),
                  InterText("Market Price"),
                  SizedBox(height: MARGIN_MEDIUM_2),
                  Row(
                    children: [
                      InterText("Royal City",
                          TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold)),
                      Spacer(),
                      SizedBox(
                          width: 100,
                          child: InterText(
                              "Sell Price",
                              TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold),
                              TextAlign.end)),
                      SizedBox(width: MARGIN_MEDIUM_3),
                      SizedBox(
                          width: 100,
                          child: InterText(
                              "Updated Time",
                              TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold),
                              TextAlign.end)),
                    ],
                  ),
                  Divider(
                    color: get80PercentColor(context).withOpacity(0.2),
                  ),
                  Column(
                    children: provider.marketPriceList
                        .map((market) => MarketPriceRow(
                              royalCity: market.city,
                              sellPrice: market.sellPriceMin,
                              updatedTime: market.sellPriceMinDate,
                            ))
                        .toList(),
                  )
                ],
              )
            : SizedBox(),
      );
    });
  }
}

class MarketPriceRow extends StatelessWidget {
  final String royalCity;
  final int sellPrice;
  final String updatedTime;
  const MarketPriceRow({
    super.key,
    required this.royalCity,
    required this.sellPrice,
    required this.updatedTime,
  });

  @override
  Widget build(BuildContext context) {
    return sellPrice != 0
        ? Column(
            children: [
              Row(
                children: [
                  InterText(royalCity, TextStyle(fontSize: TEXT_SMALL)),
                  Spacer(),
                  SizedBox(
                      width: 100,
                      child: InterText(
                          convertToCurrency(sellPrice), TextStyle(fontSize: TEXT_SMALL), TextAlign.end)),
                  SizedBox(width: MARGIN_MEDIUM_3),
                  SizedBox(
                      width: 100,
                      child: InterText(timeago.format(convertStringToDateTime(updatedTime)),
                          TextStyle(fontSize: TEXT_SMALL), TextAlign.end)),
                ],
              ),
              Divider(
                height: MARGIN_LARGE,
                color: get80PercentColor(context).withOpacity(0.2),
              ),
            ],
          )
        : SizedBox();
  }
}
