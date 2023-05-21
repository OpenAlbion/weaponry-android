import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';
import 'package:openalbion_weaponry/utils/debouncer.dart';

class SearchSection extends StatefulWidget {
  final TextEditingController? controller;
  final Function onDimissSearch;
  final Function(String text) onChanged;

  const SearchSection(
      {super.key, required this.controller, required this.onDimissSearch, required this.onChanged});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final Debouncer _debouncer = Debouncer();
  bool showClearButton = false;

  @override
  void initState() {
    widget.controller?.addListener(() {
      setState(() {
        showClearButton = widget.controller?.text.isNotEmpty == true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: primaryRed,
        controller: widget.controller,
        style: TextStyle(fontSize: TEXT_REGULAR),
        onTapOutside: (event) {
          widget.onDimissSearch();
        },
        onChanged: (value) {
          _debouncer.call(
            () {
              widget.onChanged(value);
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
                      widget.controller?.clear();
                      widget.onDimissSearch();
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
