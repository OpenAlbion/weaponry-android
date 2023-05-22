import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
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
            Navigator.pushNamed(context, ItemDetailScreen.routeName,
                arguments: ItemDetailArgs(item: item, type: type));
          })
        ],
      ),
    );
  }
}
