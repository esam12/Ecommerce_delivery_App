import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';


class VerifyCodeSignUp {
  late CRUD crud;

  VerifyCodeSignUp(this.crud);

  postData(String email, String code) async {
    var response = await crud.postData(AppLinkApi.authVerifycode, {
      "email": email,
      "verfiycode": code,
    });
    return response.fold((l) => l, (r) => r);
  }

  reSendData(String email) async {
    var response = await crud.postData(AppLinkApi.resendverifycode, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
