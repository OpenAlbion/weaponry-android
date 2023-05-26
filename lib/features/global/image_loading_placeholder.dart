import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openalbion_weaponry/constants/app_dimens.dart';

class ImageLoadingPlaceholder extends StatelessWidget {
  final double size;
  const ImageLoadingPlaceholder({
    super.key,
    required this.size
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MARGIN_MEDIUM),
      child: Opacity(
        opacity: 0.8,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(MARGIN_MEDIUM),
            child: SvgPicture.asset('assets/images/svgs/ic_app_logo_greyscale.svg', width: size)),
      ),
    );
  }
}
