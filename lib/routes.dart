import 'package:delivery/core/constant/routes.dart';
import 'package:delivery/core/middleware/mymiddleware.dart';
import 'package:delivery/views/screens/auth/forgetPassword/forgetpassword.dart';
import 'package:delivery/views/screens/auth/forgetPassword/resetpassword.dart';
import 'package:delivery/views/screens/auth/forgetPassword/success_resetpassword.dart';
import 'package:delivery/views/screens/auth/forgetPassword/verifycode.dart';
import 'package:delivery/views/screens/auth/login.dart';
import 'package:delivery/views/screens/auth/signup.dart';
import 'package:delivery/views/screens/auth/success_signup.dart';
import 'package:delivery/views/screens/auth/verifycodesignup.dart';
import 'package:delivery/views/screens/language.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPass, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verifycode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];
