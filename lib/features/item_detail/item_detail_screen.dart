import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/choose_enchantment_section.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/gear_stat_section.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/market_section.dart';
import 'package:openalbion_weaponry/features/item_detail/sections/spell_section.dart';
import 'package:openalbion_weaponry/providers/item_detail_provider.dart';
import 'package:openalbion_weaponry/providers/market_price_provider.dart';
import 'package:provider/provider.dart';

class ItemDetailScreen extends StatelessWidget {
  static const routeName = 'item_detail_screen';
  final ItemDetailArgs args;
  const ItemDetailScreen({super.key, required this.args});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ItemDetailProvider>(create: (_) => ItemDetailProvider()..getItemDetail(args.type, args.item.id)),
        ChangeNotifierProvider(create: (_) => MarketPriceProvider()..initializeIdAndMarket(args.item.identifier))
      ],
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButton(),
                SizedBox(height: MARGIN_MEDIUM_2),
                ChooseEnchantmentSection(item: args.item),
                SizedBox(height: MARGIN_LARGE),
                GearStatSection(),
                MarketSection(),
                SpellSection(),
                SizedBox(height: MARGIN_LARGE),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemDetailArgs {
  final ItemVO item;
  final String type;

  ItemDetailArgs({required this.type, required this.item});
}
