import 'package:bestarchi/Views/components/AlreadySignUp.dart';
import 'package:bestarchi/Views/components/appleLogo.dart';
import 'package:bestarchi/Views/components/fbButton.dart';
import 'package:bestarchi/Views/components/signButton.dart';
import 'package:bestarchi/Views/components/textInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class LoginScreen extends StatelessWidget {
  void _onClickFacebook() {
    print("FACEBOOK");
    Get.toNamed("/home_screen");
  }

  void _onClickApple() {
    print("APPLE");
    Get.toNamed("/home_screen");
  }

  void _onClickLabelButton() {
    print("APPLE");
    Get.toNamed("/signup_screen");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                            child: Text("Let's sign you in",
                                style: SignupFont1TextStyle),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Text("Welcome Back",
                                style: SignupFont2TextStyle),
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Flexible(
                          flex: 1,
                          child: TextInput(
                              false, "Phone number, Email or User name")),
                      SizedBox(height: 50),
                      Flexible(flex: 1, child: TextInput(true, "Password")),
                    ],
                  ),
                )),
            Expanded(flex: 1, child: SignButton()),
            Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
                    // Spacer(),
                    Expanded(
                        flex: 2,
                        child: FbButton(
                            "Sign In with facebook", _onClickFacebook)),
                    Expanded(
                        flex: 2,
                        child: AppleLogo("Sign In with Apple", _onClickApple)),
                    Expanded(
                        flex: 1,
                        child: AlreadySignUp(
                            "Back To Regsiter", _onClickLabelButton)),
                    Spacer(),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
