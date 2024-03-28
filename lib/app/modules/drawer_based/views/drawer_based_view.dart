import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/drawer_based_controller.dart';

class DrawerBasedView extends GetView<DrawerBasedController> {
  const DrawerBasedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DrawerBasedView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DrawerBasedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
