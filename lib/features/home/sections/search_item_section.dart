import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/data/vos/search_result_vo.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:openalbion_weaponry/features/home/sections/item_list_section.dart';
import 'package:openalbion_weaponry/features/home/widgets/history_view.dart';
import 'package:openalbion_weaponry/features/item_detail/item_detail_screen.dart';
import 'package:openalbion_weaponry/providers/based_provider.dart';
import 'package:openalbion_weaponry/providers/search_provider.dart';
import 'package:provider/provider.dart';

class SearchItemSection extends StatelessWidget {
  const SearchItemSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      return Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            provider.searchResultHistoryList.isNotEmpty ? HistorySection() : SizedBox(),
            SizedBox(height: MARGIN_MEDIUM_2),
            SearchResultSection(),
          ]),
        ),
      );
    });
  }
}

class HistorySection extends StatelessWidget {
  const HistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MARGIN_MEDIUM_2),
          Padding(
            padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
            child: InterText("Search History"),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          SizedBox(
            height: 35,
            child: ListView.builder(
                padding: EdgeInsets.only(right: MARGIN_MEDIUM_2),
                scrollDirection: Axis.horizontal,
                itemCount: provider.searchResultHistoryList.length,
                itemBuilder: (context, index) {
                  return HistoryView(text: provider.searchResultHistoryList[index].name, onTap: () {});
                  // return Text(provider.searchResultList[index].name);
                }),
          ),
        ],
      );
    });
  }
}

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchProvider>(builder: (context, provider, child) {
      switch (provider.state) {
        case ViewState.COMPLETE:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: MARGIN_MEDIUM_2),
                child: InterText("Search Result"),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: provider.searchResultList.length,
                  itemBuilder: (context, index) {
                    return ItemView(
                        item: provider.searchResultList[index].convertToItemVO(),
                        onTap: () {
                          provider.addSearchResult(provider.searchResultList[index]);
                                      Navigator.pushNamed(context, ItemDetailScreen.routeName,
                arguments: ItemDetailArgs(item: provider.searchResultList[index].convertToItemVO(), type: provider.searchResultList[index].type));
                        });
                  }),
            ],
          );

        default:
          return SizedBox();
      }
    });
  }
}
