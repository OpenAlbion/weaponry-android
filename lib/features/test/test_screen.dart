import 'package:flutter/material.dart';
import 'package:openalbion_weaponry/theme/app_color.dart';

class TestScreen extends StatefulWidget {
  static const routeName = 'test_screen';
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DefaultTabController(
              length: 3,
              child: TabBar(
                  labelColor: blackText,
                  // controller: TabController(length: 3, vsync: this),
                  onTap: (value) {
                    setState(() {
                      
                    });
                  },
                  tabs: [
                    Tab(text: 'One'),
                    Tab(text: 'Two'),
                    Tab(text: 'Three'),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
