import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/enchantment_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
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
    return Consumer<ItemDetailProvider>(
      builder: (context,provider,child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity),
            Hero(
              tag: 'item${item.id}',
              child: CachedNetworkImage(
                imageUrl: provider.enchanmentList.isEmpty
                    ? item.icon
                    : provider.selectedEnchantment.icon,
                width: 110,
                filterQuality: FilterQuality.high,
              ),
            ),
            SizedBox(height: MARGIN_MEDIUM),
            InterText(item.name, TextStyle(fontSize: TEXT_REGULAR_2X - 2)),
          ],
        );
      }
    );
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
