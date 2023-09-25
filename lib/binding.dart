import 'package:delivery/controller/auth/signup_controller.dart';
import 'package:delivery/core/class/crud.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(CRUD());
  }
}
