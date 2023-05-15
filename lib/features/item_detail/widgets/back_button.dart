import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(MARGIN_MEDIUM_2),
      onPressed: () {
        Navigator.pop(context);
      },
      icon: SvgPicture.asset(
        'assets/images/svgs/ic_back.svg',
        colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
      ),
      splashRadius: MARGIN_LARGE,
      constraints: BoxConstraints(
        minWidth: MARGIN_LARGE,
      ),
    );
  }
}
