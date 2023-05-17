import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:openalbion_weaponry/features/about/section/icon_and_name_section.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = 'about_screen';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AboutIconAndNameSection(),
          
        ],
      ),
    );  }
}