import 'package:delivery/core/class/crud.dart';
import 'package:delivery/linkapi.dart';


class CheckEmailData {
  late CRUD crud;

  CheckEmailData(this.crud);

  postData(String email) async {
    var response = await crud.postData(AppLinkApi.checkemail, {
      "email": email,
    });

    return response.fold((l) => l, (r) => r);
  }
}
