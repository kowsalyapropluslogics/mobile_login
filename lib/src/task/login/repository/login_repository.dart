import '../../../../allpackages.dart';

class LoginRepository {
  LoginService loginService = Get.put(LoginService());
  Future<LoginModel?> loginRepo({username, password}) async {
    try {
      var response = await loginService.loginService(
          username: username, password: password);
      if (response != null) {
        var jsonresponse = LoginModel.fromJson(response);
        return jsonresponse;
      }
    } catch (e) {
      rethrow;
    }
  }
}
