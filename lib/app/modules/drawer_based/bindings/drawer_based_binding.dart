import 'package:get/get.dart';

import '../controllers/drawer_based_controller.dart';

class DrawerBasedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DrawerBasedController>(
      () => DrawerBasedController(),
    );
  }
}
