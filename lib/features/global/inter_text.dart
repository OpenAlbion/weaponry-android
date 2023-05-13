import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openalbion_weaponry/constants/app_fonts.dart';

class InterText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const InterText(this.text, [this.style]);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // style: style?.copyWith(fontFamily: inter,color: Theme.of(context).textTheme.displayMedium!.color) ?? TextStyle(
      //   fontFamily: inter,
      // ),
      style: (style ?? TextStyle())
          .copyWith(fontFamily: inter, color: style?.color ?? Theme.of(context).textTheme.displayMedium!.color),
    );
  }
}
