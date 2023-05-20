import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/quality_vo.dart';
import 'package:openalbion_weaponry/data/vos/stat_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/market_section.dart';
import 'package:openalbion_weaponry/features/item_detail/widgets/gear_stat_loading.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
import 'package:openalbion_weaponry/providers/market_price_provider.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GearStatSection extends StatelessWidget {
  const GearStatSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
      switch (provider.state) {
        case ViewState.COMPLETE:
          return _buildCompleteGearStat(provider);

        case ViewState.LOADING:
          return GearStatLoading();

        default:
          return SizedBox();
      }
    });
  }

  Column _buildCompleteGearStat(ItemDetailProvider provider) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: GearStatTitleAndDropDown(),
        ),
        SizedBox(height: MARGIN_MEDIUM_3),
        provider.enchanmentList.isNotEmpty ? GearStatTable() : SizedBox(),
      ],
    );
  }
}

class GearStatTable extends StatelessWidget {
  const GearStatTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
      return ListView.separated(
          shrinkWrap: true,
          itemCount: provider.selectedQuality.stats.toDoubleStatList().length,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) {
            // return Divider(
            //   indent: MARGIN_MEDIUM_2,
            //   endIndent: MARGIN_CARD_MEDIUM_2,
            //   color: get80PercentColor(context).withOpacity(0.3),);
            return SizedBox();
          },
          itemBuilder: (context, index) {
            return GearStatRow(
              firstStat: StatVO(
                  name: provider.selectedQuality.stats.toDoubleStatList()[index].firstStat.name,
                  value: provider.selectedQuality.stats.toDoubleStatList()[index].firstStat.value),
              secondStat: StatVO(
                  name: provider.selectedQuality.stats.toDoubleStatList()[index].secondStat.name,
                  value: provider.selectedQuality.stats.toDoubleStatList()[index].secondStat.value),
            );
          });
    });
  }
}

class GearStatTitleAndDropDown extends StatelessWidget {
  const GearStatTitleAndDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MarketPriceProvider>(builder: (context, marketProvider, child) {
      return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InterText(AppLocalizations.of(context)!.gear_stats),
            provider.enchanmentList.isNotEmpty && provider.selectedEnchantment.stats.isNotEmpty
                ? SizedBox(
                    width: 150,
                    child: DropdownButtonFormField2(
                      value: provider.selectedQuality.quality,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: getCardColor(context),

                        //Add isDense true and zero Padding.
                        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4), borderSide: BorderSide.none),
                        //Add more decoration as you want here
                        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                      ),
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        offset: Offset(0, -10),
                        decoration: BoxDecoration(
                            color: getCardColor(context),
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: []),
                      ),
                      onChanged: (quality) {
                        if (quality != null) {
                          provider.selectQuality(provider.selectedEnchantment.searchQualityVO(quality));
                          marketProvider.selectedQuality = convertQualityNameToQualityId(quality);
                          marketProvider.getMarketPrice();
                        }
                      },
                      items: provider.selectedEnchantment.stats
                          .map(
                            (stats) => DropdownMenuItem(
                              value: stats.quality,
                              child: InterText(
                                stats.quality,
                                TextStyle(fontSize: TEXT_SMALL),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                : SizedBox(),
          ],
        );
      });
    });
  }
}

class GearStatRow extends StatelessWidget {
  final StatVO firstStat;
  final StatVO secondStat;
  const GearStatRow({
    required this.firstStat,
    required this.secondStat,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 100, child: InterText(firstStat.name, TextStyle(fontSize: TEXT_SMALL))),
                  SizedBox(width: 20, child: InterText(":", TextStyle(fontSize: TEXT_SMALL))),
                  SizedBox(
                      width: 40,
                      child: InterText(firstStat.value, TextStyle(fontSize: TEXT_SMALL), TextAlign.end))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: 100, child: InterText(secondStat.name, TextStyle(fontSize: TEXT_SMALL))),
                  Visibility(
                    visible: secondStat.name.isNotEmpty,
                    child: SizedBox(width: 20, child: InterText(":", TextStyle(fontSize: TEXT_SMALL))),
                  ),
                  SizedBox(
                      width: 40,
                      child: InterText(secondStat.value, TextStyle(fontSize: TEXT_SMALL), TextAlign.end))
                ],
              ),
            ],
          ),
          SizedBox(height: MARGIN_MEDIUM),
          Divider(
            color: get80PercentColor(context).withOpacity(0.3),
          )
        ],
      ),
    );
  }
}
