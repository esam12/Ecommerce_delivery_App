import 'package:delivery/core/constant/routes.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  GetPage(name: AppRoute.login, page: () => const Login()),

];