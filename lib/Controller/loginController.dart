import 'package:bestarchi/Models/loginModel.dart';
import 'package:bestarchi/Services/userService.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var isLoginLoading = false.obs;
  List<Login> loginData = List<Login>.empty(growable: true).obs;
  @override
  void onInit() {
    super.onInit();
  }

  void fetchLoginData(email, password) async {
    try {
      isLoginLoading(true);

      var loginInfo = await LoginService.loginCalling(email, password);

      if (loginInfo != null) {
        loginData.assign(loginInfo);
        Get.toNamed("/home_screen");
        print(loginInfo.userExists.email);
      } else {
        print("Not get value");
      }
    } finally {
      isLoginLoading(false);
    }
  }
}
