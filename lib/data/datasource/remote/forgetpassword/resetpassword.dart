import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';


class ResetPassData {
  late CRUD crud;

  ResetPassData(this.crud);

  postData(String email, String password) async {
    var response = await crud.postData(AppLinkApi.resetpassword, {
      "email": email,
      "password": password,
    });

    return response.fold((l) => l, (r) => r);
  }
}
