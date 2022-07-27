import '../../allpackages.dart';

class GetxBindings {
  LoginRepository loginRepository = Get.put(LoginRepository(), permanent: true);
  LoginService loginService = Get.put(LoginService(), permanent: true);
  LoginController loginController = Get.put(LoginController(), permanent: true);
}
