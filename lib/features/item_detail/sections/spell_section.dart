import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/slot_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';

class SpellSection extends StatelessWidget {
  const SpellSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ItemDetailProvider>(builder: (context, provider, child) {
      return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.slotList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => SlotView(
                slot: provider.slotList[index],
              ));
    });
  }
}

class SlotView extends StatelessWidget {
  final SlotVO slot;
  const SlotView({
    required this.slot,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MARGIN_LARGE),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(slot.slot),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: slot.spells.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                collapsedIconColor: get80PercentColor(context),
                iconColor: secondaryRed,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.only(left: MARGIN_CARD_MEDIUM, right: MARGIN_MEDIUM_2),
                leading: CachedNetworkImage(
                  imageUrl: slot.spells[index].icon,
                  width: MARGIN_XXLARGE,
                  errorWidget: (context, url, error) => Opacity(
                    opacity: 0.5,
                    child: Image.asset('assets/images/pngs/ic_placeholder_spell.png')),
                  filterQuality: FilterQuality.high,
                ),
                title: InterText(slot.spells[index].name.isNotEmpty ? slot.spells[index].name : "-", style: TextStyle(fontSize: TEXT_REGULAR)),
                children: [
                  SizedBox(height: MARGIN_CARD_MEDIUM),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
                    child: InterText(slot.spells[index].description),
                  ),
                ],
              );
            })
      ],
    );
  }
}
