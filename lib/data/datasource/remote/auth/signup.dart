import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';


class SignUpData {
  late CRUD crud;

  SignUpData(this.crud);

  postData(String usename, String password, String email, String phone) async {
    var response = await crud.postData(AppLinkApi.signup, {
      "username": usename,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
