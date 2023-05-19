import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';
import 'package:openalbion_weaponry/features/about/section/icon_and_name_section.dart';
import 'package:openalbion_weaponry/features/global/inter_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = 'about_screen';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutIconAndNameSection(),
            SizedBox(height: MARGIN_LARGE),
            OrgAndAppLogoSection(),
            SizedBox(height: MARGIN_LARGE),
            AboutProjectSection(),
            Divider(
              height: MARGIN_XLARGE,
              color: get80PercentColor(context).withOpacity(0.2),
            ),
            AboutAppSection(),
            Divider(
              height: MARGIN_XLARGE,
              color: get80PercentColor(context).withOpacity(0.2),
            ),
            AboutUsSection(),
            SizedBox(height: MARGIN_XLARGE)
          ],
        ),
      ),
    );
  }
}

class WebLauncherButton extends StatelessWidget {
  final String text;
  final String svgIcon;
  final bool enableDarkModeColor;
  const WebLauncherButton({
    required this.text,
    required this.svgIcon,
    required this.enableDarkModeColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM, vertical: MARGIN_MEDIUM),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MARGIN_SMALL),
            border: Border.all(
              color: get80PercentColor(context).withOpacity(0.2),
            ),
          ),
          child: Row(
            children: [
              enableDarkModeColor
                  ? SvgPicture.asset(
                      svgIcon,
                      width: 19,
                      colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
                    )
                  : SvgPicture.asset(svgIcon, width: 19),
              SizedBox(width: MARGIN_MEDIUM),
              InterText(
                text,
                TextStyle(
                  fontSize: TEXT_REGULAR,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DeveloperView extends StatelessWidget {
  final String nickName;
  final String city;
  final Color color;
  const DeveloperView({
    required this.nickName,
    required this.city,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM, vertical: MARGIN_MEDIUM),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MARGIN_SMALL),
            border: Border.all(
              color: get80PercentColor(context).withOpacity(0.2),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(TextSpan(children: [
                TextSpan(text: "Nickname : ", style: TextStyle(fontFamily: inter)),
                TextSpan(text: nickName, style: TextStyle(fontFamily: inter))
              ])),
              SizedBox(height: MARGIN_SMALL - 1),
              Text.rich(TextSpan(children: [
                TextSpan(text: "Royal city : ", style: TextStyle(fontFamily: inter)),
                TextSpan(text: city, style: TextStyle(color: color, fontFamily: inter))
              ])),
            ],
          ),
        ),
      ),
    );
  }
}

class OrgAndAppLogoSection extends StatelessWidget {
  const OrgAndAppLogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/images/svgs/ic_org_logo.svg', width: 70),
        SizedBox(width: MARGIN_MEDIUM_2),
        SvgPicture.asset(
          'assets/images/svgs/ic_arrow.svg',
          height: 40,
          colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
        ),
        SizedBox(width: MARGIN_MEDIUM_2),
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SvgPicture.asset('assets/images/svgs/ic_app_logo.svg', width: 70))
      ],
    );
  }
}

class AboutProjectSection extends StatelessWidget {
  const AboutProjectSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InterText(
            AppLocalizations.of(context)!.about_project_title,
            TextStyle(fontSize: TEXT_REGULAR_2X - 1, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          InterText(
            AppLocalizations.of(context)!.about_project_description,
            TextStyle(
              height: 1.4,
              fontSize: TEXT_REGULAR,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          WebLauncherButton(
            text: 'Github',
            svgIcon: 'assets/images/svgs/ic_github_dark.svg',
            enableDarkModeColor: true,
          )
        ],
      ),
    );
  }
}

class AboutAppSection extends StatelessWidget {
  const AboutAppSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InterText(
            AppLocalizations.of(context)!.about_app_title,
            TextStyle(fontSize: TEXT_REGULAR_2X - 1, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: MARGIN_MEDIUM),
          InterText(
            AppLocalizations.of(context)!.about_app_description,
            TextStyle(
              height: 1.4,
              fontSize: TEXT_REGULAR,
            ),
          ),
          SizedBox(height: MARGIN_MEDIUM_2),
          WebLauncherButton(
            text: 'Github',
            svgIcon: 'assets/images/svgs/ic_github_dark.svg',
            enableDarkModeColor: true,
          )
        ],
      ),
    );
  }
}

class AboutUsSection extends StatelessWidget {
  const AboutUsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(
            AppLocalizations.of(context)!.about_us_title,
            TextStyle(fontSize: TEXT_REGULAR_2X - 1, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: InterText(
            AppLocalizations.of(context)!.about_us_description,
            TextStyle(
              height: 1.4,
              fontSize: TEXT_REGULAR,
            ),
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: MARGIN_MEDIUM_2),
              DeveloperView(nickName: "PyaeSoneAung", city: "Bridgewatch", color: bridgeWatchColor),
              SizedBox(width: MARGIN_MEDIUM_2),
              DeveloperView(nickName: "GateMhue", city: "FortSterling", color: fortSterlingColor),
              SizedBox(width: MARGIN_MEDIUM_2),
            ],
          ),
        ),
        SizedBox(height: MARGIN_MEDIUM_2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MARGIN_MEDIUM_2),
          child: WebLauncherButton(
            text: 'Discord',
            svgIcon: 'assets/images/svgs/ic_discord.svg',
            enableDarkModeColor: false,
          ),
        )
      ],
    );
  }
}
