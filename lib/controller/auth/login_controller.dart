import 'package:delivery/core/class/statusrequest.dart';
import 'package:delivery/core/constant/routes.dart';
import 'package:delivery/core/functions/handlingdata.dart';
import 'package:delivery/core/services/services.dart';
import 'package:delivery/data/datasource/remote/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPass();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> fromstate = GlobalKey<FormState>();
  MyServices myServices = Get.find();

  late TextEditingController email;
  late TextEditingController password;
  bool isShowPass = true;
  StatusRequest statusRequest = StatusRequest.none;
  LoginData loginData = LoginData(Get.find());

  showPassword() {
    isShowPass = isShowPass == true ? false : true;
    update();
  }

  @override
  login() async {
    var formdata = fromstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          if (response['data']['delivery_approve'] == 1) {
            myServices.sharedPreferences
                .setString("id", response['data']['delivery_id'].toString());
            String userid = myServices.sharedPreferences.getString("id")!;
            myServices.sharedPreferences
                .setString("username", response['data']['delivery_name']);
            myServices.sharedPreferences
                .setString("email", response['data']['delivery_email']);
            myServices.sharedPreferences.setString(
                "phone", response['data']['delivery_phone'].toString());
            myServices.sharedPreferences.setString("step", "2");
            // FirebaseMessaging.instance.subscribeToTopic("delivery");
            // FirebaseMessaging.instance.subscribeToTopic("delivery$userid");
            //data.addAll(response['data']);
            Get.offNamed(AppRoute.homepage);
          } else {
            Get.toNamed(AppRoute.verfiyCodeSignUp,
                arguments: {"email": email.text});
          }
        } else {
          Get.defaultDialog(
              title: "Waring", middleText: "Email or password not corect");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  goToForgetPass() {
    Get.toNamed(AppRoute.forgetPassword);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   String? token = value;
    //   print(token);
    // });
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
