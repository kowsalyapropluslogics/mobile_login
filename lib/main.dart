import 'allpackages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  checkLogin();
  runApp(const MyApp());
}

String? token;
checkLogin() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  token = sharedPreferences.getString(Constant.authToken);
  print(token);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: LoginUi(),
    );
  }
}
