import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_crafting_section.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_general_section.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_market_section.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class ConsumableTabSection extends StatefulWidget {
  const ConsumableTabSection({super.key});

  @override
  State<ConsumableTabSection> createState() => _ConsumableTabSectionState();
}

class _ConsumableTabSectionState extends State<ConsumableTabSection> with TickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  @override
  void initState() {
    _controller = TabController(length: AppConstants.AVAILABLE_CONSUMABLE_TAB_LIST.length, vsync: this);
    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: _controller,
          isScrollable: true,
          labelColor: secondaryRed,
          unselectedLabelColor: get80PercentColor(context),
          labelStyle: getInterTextStyle(context),
          indicatorColor: secondaryRed,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: AppConstants.AVAILABLE_CONSUMABLE_TAB_LIST
              .map((tab) => Tab(
                    text: tab,
                  ))
              .toList(),
        ),
        _buildTabBodySection()
      ],
    );
  }

  Widget _buildTabBodySection() {
    switch (_selectedIndex) {
      case 0:
        return ConsumableGeneralSection();

      case 1:
        return ConsumableMarketSection();

      case 2:
        return ConsumableCraftingSection();

      default:
        return SizedBox();
    }
  }

  @override
  void dispose() {
    _controller.removeListener(() {});
    super.dispose();
  }
}
