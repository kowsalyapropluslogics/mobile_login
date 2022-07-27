import 'package:phonelogin/allpackages.dart';

class LoginController extends GetxController {
  LoginRepository loginRepository = Get.put(LoginRepository());
  //declarations
  RxBool loginnull = true.obs;
  final List<LoginModel> _loginmodel = [];
  List<LoginModel> get loginmodel => _loginmodel;
  TextEditingController userName = TextEditingController();
  TextEditingController mPIN = TextEditingController();

  Future loginController() async {
    SharedPreferences _sharedPreferences =
        await SharedPreferences.getInstance();

    try {
      var data = await loginRepository.loginRepo(
          username: userName.text, password: mPIN.text);
      if (data != null) {
        _loginmodel.clear();
        _sharedPreferences.setString(
            Constant.authToken, data.data!.token!.accessToken!);
        _sharedPreferences.setString(Constant.mobileNumber, userName.text);
        loginnull(false);
      } else {
        loginnull(false);
        Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }
}
