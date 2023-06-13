import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';

class InterText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  const InterText(this.text, {super.key, this.style, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: style?.copyWith(fontFamily: inter,color: Theme.of(context).textTheme.displayMedium!.color) ?? TextStyle(
      //   fontFamily: inter,
      // ),
      textAlign: textAlign,
      style: (style ?? TextStyle()).copyWith(
          fontFamily: inter, color: style?.color ?? Theme.of(context).textTheme.displayMedium!.color),
    );
  }
}

TextStyle getInterTextStyle(BuildContext context) {
  return TextStyle().copyWith(
      fontFamily: inter, color: Theme.of(context).textTheme.displayMedium!.color);
}
