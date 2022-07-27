

import '../../../../allpackages.dart';
import 'package:http/http.dart ' as http;

class LoginService {
  Future loginService({username, password}) async {
    try {
      var data = {"UserName": username, "password": password};
      var response = await http.post(Uri.parse(Urls.login), body: data);
      var jsonresponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        if (jsonresponse['status'] == true) {
          return jsonresponse;
        } else {
          return null;
        }
      }
    } catch (e) {
      rethrow;
    }
  }
}
