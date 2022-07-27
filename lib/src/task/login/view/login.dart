import '../../../../allpackages.dart';

class LoginUi extends StatefulWidget {
  LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            TextField(
              controller: loginController.userName,
            ),
            TextField(
              controller: loginController.mPIN,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    loginController.loginController();
                  }
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
