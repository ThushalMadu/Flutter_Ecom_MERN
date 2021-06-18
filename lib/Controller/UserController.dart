import 'package:bestarchi/Models/userModel.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  UserController();

  final user = User().obs;

  updateUserName(String uName) {
    user.update((val) {
      val!.name = uName;
    });
  }

  updateUserPassword(String uPass) {
    user.update((val) {
      val!.password = uPass;
    });
  }
}
