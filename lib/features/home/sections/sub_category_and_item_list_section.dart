import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/consumable_detail/consumable_detail_screen.dart';
import 'package:openalbion_weaponry/features/home/sections/item_list_section.dart';
import 'package:openalbion_weaponry/features/home/sections/sub_category_list_section.dart';
import 'package:openalbion_weaponry/features/item_detail/item_detail_screen.dart';

class SubCategoryAndItemListSection extends StatelessWidget {
  const SubCategoryAndItemListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: MARGIN_MEDIUM_2),
          SubCategoryListSection(),
          SizedBox(height: MARGIN_MEDIUM_2),
          ItemListSection(onTap: (type, item) {
            _navigateDetailScreen(context, type, item);
          })
        ],
      ),
    );
  }

  void _navigateDetailScreen(BuildContext context, String itemType, ItemVO item) {
    switch (itemType) {
      case 'weapon':
      case 'armor':
        Navigator.pushNamed(context, ItemDetailScreen.routeName,
            arguments: ItemDetailArgs(item: item, type: itemType));
        break;

      case 'consumable':
        Navigator.pushNamed(context, ConsumableDetailScreen.routeName,
            arguments: ConsumableDetailArgs(item: item, type: itemType));
        break;
    }
  }
}
