import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';

class ChooseEnchantmentSection extends StatelessWidget {
  final ItemVO item;
  const ChooseEnchantmentSection({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconWithImage(item: item),
        SizedBox(height: MARGIN_XLARGE),
        EnchantmentRow(),
        SizedBox(height: MARGIN_XLARGE),
        GearStatSection()
      ],
    );
  }
}

class IconWithImage extends StatelessWidget {
  const IconWithImage({
    super.key,
    required this.item,
  });

  final ItemVO item;

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          Hero(
            tag: 'item${item.id}',
            child: CachedNetworkImage(
              imageUrl: provider.enchanmentList.isEmpty ? item.icon : provider.selectedEnchantment.icon,
              width: 110,
              filterQuality: FilterQuality.high,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          InterText(item.name, TextStyle(fontSize: TEXT_REGULAR_2X - 2)),
        ],
      );
    });
  }
}

class EnchantmentRow extends StatelessWidget {
  const EnchantmentRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: InterText(
              AppLocalizations.of(context)!.choose_enchantment_level,
              TextStyle(
                fontSize: TEXT_REGULAR,
              ),
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          SizedBox(
            height: 75,
            child: ListView.builder(
                padding: EdgeInsets.only(right: MARGIN_MEDIUM),
                itemCount: provider.enchanmentList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return EnchantmentItem(enchantItem: provider.enchanmentList[index]);
                }),
          )
        ],
      );
    });
  }
}

class EnchantmentItem extends StatelessWidget {
  final EnchantmentVO enchantItem;
  const EnchantmentItem({
    required this.enchantItem,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ItemDetailProvider>().selectEnchantment(enchantItem);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: MARGIN_MEDIUM),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: CachedNetworkImage(
                imageUrl: enchantItem.icon,
                width: 75,
                filterQuality: FilterQuality.high,
              ),
            ),
            Visibility(
              visible: context.read<ItemDetailProvider>().selectedEnchantment.enchantment ==
                  enchantItem.enchantment,
              child: Positioned(
                bottom: 12,
                right: 11,
                child: Image.asset(
                  'assets/images/pngs/ic_checked.png',
                  width: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GearStatSection extends StatelessWidget {
  GearStatSection({super.key});
  final List<String> genderItems = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(
      builder: (context, provider, child) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InterText(AppLocalizations.of(context)!.gear_stats),
                provider.enchanmentList.isNotEmpty? SizedBox(
                  width: 150,
                  child: DropdownButtonFormField2(
                    value: provider.selectedEnchantment.stats.first.quality,
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
                    onChanged: (value) {},
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
                ): SizedBox(),
              ],
            ),
          )
        ],
      );
    });
  }
}
