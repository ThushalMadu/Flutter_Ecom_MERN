import 'package:bestarchi/Controller/ItemController.dart';
import 'package:bestarchi/Controller/LoginController.dart';
import 'package:bestarchi/Views/components/AlreadySignUp.dart';
import 'package:bestarchi/Views/components/appleLogo.dart';
import 'package:bestarchi/Views/components/fbButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class SignUpScreen extends StatelessWidget {
  void _onClickFacebook() async {
    print("FACEBOOK Login");
    // Get.toNamed("/home_screen");
  }

  void _onClickApple() {
    print("APPLE");
    Get.toNamed("/home_screen");
  }

  void _onClickLabelButton() {
    print("LABEL");
    Get.toNamed("/login_screen");
  }

  // Loading code how to getx update state
  // Obx(() => Text('${u.isLoading}'))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            child: Text("Create Your",
                                style: SignupFont1TextStyle),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text("Account", style: SignupFont2TextStyle),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/hamburger.png",
                    fit: BoxFit.fitHeight,
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    // Spacer(),
                    Expanded(
                        flex: 2,
                        child: FbButton(
                            "Sign up with facebook", _onClickFacebook)),
                    Expanded(
                        flex: 2,
                        child: AppleLogo("Sign up with Apple", _onClickApple)),
                    Expanded(
                        flex: 1,
                        child: AlreadySignUp(
                            "Already Have Account", _onClickLabelButton)),
                    Spacer(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
