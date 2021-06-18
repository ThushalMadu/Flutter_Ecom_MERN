import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bestarchi/Controller/UserController.dart';

class HomeScreen extends StatelessWidget {
  final u = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GestureDetector(
        child: Text("Home Screen",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22.0)),
        onTap: () {
          Get.toNamed("/login_screen");
          Get.find<UserController>().updateUserName("Thushal");
        },
      )),
    );
  }
}
