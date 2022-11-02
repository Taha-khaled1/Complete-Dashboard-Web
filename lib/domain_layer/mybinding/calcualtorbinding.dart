import 'package:dashboard/domain_layer/controller/calaculatorcontroller.dart';
import 'package:dashboard/domain_layer/controller/themcontroller.dart';
import 'package:get/instance_manager.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalculateController());
    Get.lazyPut(() => ThemeController());
  }
}
