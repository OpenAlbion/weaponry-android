import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/theme/app_theme.dart';

class DebugFloatingActionButton extends StatelessWidget {
  final Function onTap;
  const DebugFloatingActionButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onTap();
      },
      elevation: 0.5,
      backgroundColor: getCardColor(context),
      child: SvgPicture.asset(
        'assets/images/svgs/ic_bug.svg',
        colorFilter: ColorFilter.mode(Theme.of(context).iconTheme.color!, BlendMode.srcIn),
      ),
    );
  }
}
