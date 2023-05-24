import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AboutIconAndNameSection extends StatelessWidget {
  const AboutIconAndNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(width: MARGIN_MEDIUM),
        IconButton(
          padding: EdgeInsets.all(MARGIN_MEDIUM_2),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SvgPicture.asset(
            'assets/images/svgs/ic_menu.svg',
            colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          ),
          splashRadius: MARGIN_LARGE,
          constraints: BoxConstraints(
            minWidth: MARGIN_LARGE,
          ),
        ),
        // SizedBox(width: MARGIN_MEDIUM),
        InterText(AppLocalizations.of(context)!.about,
            style: TextStyle(fontSize: TEXT_REGULAR_2X, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
