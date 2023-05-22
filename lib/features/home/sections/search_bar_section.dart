import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:openalbion_weaponry/utils/debouncer.dart';

class SearchBarSection extends StatefulWidget {
  final Function(String text) onDimissSearch;
  final Function(String text) onChanged;

  const SearchBarSection({super.key, required this.onDimissSearch, required this.onChanged});

  @override
  State<SearchBarSection> createState() => _SearchBarSectionState();
}

class _SearchBarSectionState extends State<SearchBarSection> {
  final Debouncer _debouncer = Debouncer();
  bool showClearButton = false;
  late TextEditingController? _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();

    _searchController?.addListener(() {
      setState(() {
        showClearButton = _searchController?.text.isNotEmpty == true;
      });
      if (_searchController?.text.isEmpty == true) {
        widget.onDimissSearch("");
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: primaryRed,
        controller: _searchController,
        style: TextStyle(fontSize: TEXT_REGULAR),
        onTapOutside: (event) {
          widget.onDimissSearch(_searchController?.text ?? "");
        },
        onChanged: (value) {
          _debouncer.call(
            () {
              if (value.isNotEmpty) {
                widget.onChanged(value);
              }
            },
          );
        },
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: getCardColor(context),
          hintText: "Search swords & ...",
          hintStyle: TextStyle(fontSize: 14, color: get80PercentColor(context)),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 10, bottom: 13),
            child: SvgPicture.asset(
              'assets/images/svgs/ic_search.svg',
              colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 10, bottom: 13),
            child: showClearButton
                ? GestureDetector(
                    onTap: () {
                      _searchController?.clear();
                      widget.onDimissSearch("");
                    },
                    child: SvgPicture.asset(
                      'assets/images/svgs/ic_close.svg',
                      width: 22,
                      colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
                    ),
                  )
                : SizedBox(),
          ),
        ),
      ),
    );
  }
}
