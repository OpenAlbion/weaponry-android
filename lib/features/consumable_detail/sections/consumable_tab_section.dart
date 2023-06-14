import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_constants.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/app_error.dart';
import 'package:openalbion_weaponry/data/vos/item_vo.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_crafting_section.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_general_section.dart';
import 'package:openalbion_weaponry/features/consumable_detail/sections/consumable_market_section.dart';
import 'package:openalbion_weaponry/features/consumable_detail/widgets/consumable_detail_loading.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/consumable_detail_provider.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:provider/provider.dart';

class ConsumableTabSection extends StatefulWidget {
  final ItemVO item;
  const ConsumableTabSection({super.key, required this.item});

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
    return Consumer<ConsumableDetailProvider>(builder: (context, provider, child) {
      switch (provider.state) {
        case ViewState.LOADING:
          return ConsumableDetailLoading();

        case ViewState.COMPLETE:
          return _buildTabSectionComplete();

        case ViewState.ERROR:
          return _buildTabSectionError(provider.appError!);

        default:
          return SizedBox();
      }
    });
  }

  Widget _buildTabSectionComplete() {
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

  Widget _buildTabSectionError(AppError appError) {
    return Padding(
      padding: const EdgeInsets.only(top: MARGIN_XXLARGE),
      child: Center(
        child: InterText(
          "${appError.code}\n${appError.message}",
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildTabBodySection() {
    switch (_selectedIndex) {
      case 0:
        return ConsumableGeneralSection(item: widget.item);

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
