import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/attribute_vo.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/data/vos/stat_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/providers/consumable_detail_provider.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';

class ConsumableGeneralSection extends StatelessWidget {
  final ItemVO item;
  const ConsumableGeneralSection({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(
            AppLocalizations.of(context)!.consumer_description,
            style: TextStyle(fontSize: TEXT_REGULAR, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(
            item.info.trim(),
            style: TextStyle(height: 1.4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: MARGIN_LARGE),
          child: DottedLine(dashColor: get60PercentColor(context)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(
            AppLocalizations.of(context)!.consumer_statics,
            style: TextStyle(fontSize: TEXT_REGULAR, fontWeight: FontWeight.bold),
          ),
        ),
        _buildConsumableStats(),
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: MARGIN_LARGE),
          child: DottedLine(dashColor: get60PercentColor(context)),
        ),
      ],
    );
  }

  Widget _buildConsumableStats() {
    return Consumer<ConsumableDetailProvider>(builder: (context, provider, child) {
      return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: provider.enchanmentList.length,
          itemBuilder: (context, index) {
            return ConsumableAttributeRow(statVO: provider.selectedEnchantment.stats.first.stats[index]);
          });
    });
  }
}

class ConsumableAttributeRow extends StatelessWidget {
  final StatVO statVO;
  const ConsumableAttributeRow({super.key, required this.statVO});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: MARGIN_MEDIUM_2, left: MARGIN_MEDIUM_2, right: MARGIN_MEDIUM_2),
      child: Row(
        children: [
          SizedBox(width: 120, child: InterText(statVO.name.trim(), style: TextStyle(fontSize: TEXT_REGULAR))),
          SizedBox(width: 20, child: InterText(":", style: TextStyle(fontSize: TEXT_REGULAR))),
          Expanded(
            child: SizedBox(
                child: InterText(statVO.value.trim(),
                    style: TextStyle(fontSize: TEXT_REGULAR), textAlign: TextAlign.start)),
          )
        ],
      ),
    );
  }
}
