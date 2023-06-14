import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/market_price_vo.dart';
import 'package:openalbion_weaponry/data/vos/quality_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/item_detail/widgets/dash_border_text.dart';
import 'package:openalbion_weaponry/providers/market_price_provider.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:openalbion_weaponry/utils/timezone_utils.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;

class MarketSection extends StatelessWidget {
  final bool requiredVeritcalPadding;
  const MarketSection({super.key, required this.requiredVeritcalPadding});

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketPriceProvider>(builder: (context, provider, child) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
        child: provider.marketPriceList.isMarketAvailable()
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  requiredVeritcalPadding ? SizedBox(height: MARGIN_LARGE) : SizedBox(),
                  InterText("Market Price(${provider.selectedMarketServer})"),
                  SizedBox(height: MARGIN_MEDIUM_2),
                  Row(
                    children: [
                      InterText("Royal City",
                          style: TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold)),
                      Spacer(),
                      SizedBox(
                          width: 100,
                          child: InterText("Sell Price",
                              style: TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end)),
                      SizedBox(width: MARGIN_MEDIUM_3),
                      SizedBox(
                          width: 100,
                          child: InterText("Updated Time",
                              style: TextStyle(fontSize: TEXT_REGULAR - 1, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end)),
                    ],
                  ),
                  Divider(
                    color: get60PercentColor(context),
                  ),
                  Column(
                    children: provider.marketPriceList
                        .map((market) => MarketPriceRow(
                              royalCity: market.city,
                              quality: market.quality,
                              sellPrice: market.sellPriceMin,
                              updatedTime: market.sellPriceMinDate,
                            ))
                        .toList(),
                  )
                ],
              )
            : provider.marketPriceList.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.only(top: MARGIN_LARGE),
                    child: DashBorderText(text: "Market Not Available."),
                  )
                : SizedBox(),
      );
    });
  }
}

class MarketPriceRow extends StatelessWidget {
  final String royalCity;
  final int quality;
  final int sellPrice;
  final String updatedTime;
  const MarketPriceRow({
    super.key,
    required this.royalCity,
    required this.sellPrice,
    required this.quality,
    required this.updatedTime,
  });

  @override
  Widget build(BuildContext context) {
    return sellPrice != 0
        ? Column(
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 120,
                      child: InterText("$royalCity\n(${quality.mapItemQualityName()})",
                          style: TextStyle(fontSize: TEXT_SMALL))),
                  Spacer(),
                  SizedBox(
                      width: 100,
                      child: InterText(convertToCurrency(sellPrice),
                          style: TextStyle(fontSize: TEXT_SMALL), textAlign: TextAlign.end)),
                  SizedBox(width: MARGIN_MEDIUM_3),
                  SizedBox(
                      width: 100,
                      child: InterText(
                          timeago.format(
                              TimezoneUtils().convertToCurrentTimeZone(dateTimeString: updatedTime)),
                          style: TextStyle(fontSize: TEXT_SMALL),
                          textAlign: TextAlign.end)),
                ],
              ),
              Divider(
                height: MARGIN_LARGE,
                color: get60PercentColor(context),
              ),
            ],
          )
        : SizedBox();
  }
}
