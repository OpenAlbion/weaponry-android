import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/choose_enchantment_section.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/gear_stat_section.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
import 'package:provider/provider.dart';

class ItemDetailScreen extends StatelessWidget {
  static const routeName = 'item_detail_screen';
  final ItemDetailArgs args;
  const ItemDetailScreen({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ItemDetailProvider>(
        create: (context) => ItemDetailProvider()..getItemDetail(args.type, args.item.id),
        builder: (context, child) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BackButton(),
                    SizedBox(height: MARGIN_MEDIUM_2),
                    ChooseEnchantmentSection(item: args.item),
                    SizedBox(height: MARGIN_LARGE),
                    GearStatSection()
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class ItemDetailArgs {
  final ItemVO item;
  final String type;

  ItemDetailArgs({required this.type, required this.item});
}
