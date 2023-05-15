import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class SearchSection extends StatelessWidget {
  final TextEditingController? controller;
  final Function onDimissSearch;
  const SearchSection({super.key, required this.controller, required this.onDimissSearch});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        cursorColor: primaryRed,
        controller: controller,
        style: TextStyle(fontSize: TEXT_REGULAR),
        onTapOutside: (event) {
          
          onDimissSearch();
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
        ),
      ),
    );
  }
}
