import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/features/consumable_detail/widgets/market_price_loading.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/market_section.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/market_price_provider.dart';
import 'package:provider/provider.dart';

class ConsumableMarketSection extends StatelessWidget {
  const ConsumableMarketSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MARGIN_MEDIUM_2),
        _buildMarketPriceBody()
      ],
    );
  }

  Widget _buildMarketPriceBody(){
    return Consumer<MarketPriceProvider>(builder: (context, provider, child) {
      switch (provider.state) {
        case ViewState.LOADING:
          return MarketPriceLoading();

        case ViewState.COMPLETE:
          return MarketSection(requiredVeritcalPadding: false);

        case ViewState.ERROR:
          return _buildMarketError(provider.appError!);

        default:
          return SizedBox();
      }
    });
  }

    Widget _buildMarketError(AppError appError) {
    return Padding(
      padding: const EdgeInsets.only(top: MARGIN_XXLARGE),
      child: Center(
        child: InterText(
          "${appError.code}\n${appError.message}",
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}