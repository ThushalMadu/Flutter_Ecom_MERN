import 'package:bestarchi/Controller/loginController.dart';
import 'package:bestarchi/Views/components/AlreadySignUp.dart';
import 'package:bestarchi/Views/components/appleLogo.dart';
import 'package:bestarchi/Views/components/fbButton.dart';
import 'package:bestarchi/Views/components/signButton.dart';
import 'package:bestarchi/Views/components/textInput.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../style.dart';

class LoginScreen extends StatelessWidget {
  // how to bind textinput states
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  final LoginController l = Get.put(LoginController());

  void _onClickFacebook() {
    l.fetchLoginData(emailController.text, passwordController.text);
  }

  void _onClickApple() {
    l.fetchLoginData(emailController.text, passwordController.text);
  }

  void _onClickSignIn() {
    l.fetchLoginData(emailController.text, passwordController.text);
  }

  void _onClickLabelButton() {
    // print("APPLE");
    // how to get textinput states.

    print(emailController.text);
    print(passwordController.text);

    // Get.toNamed("/signup_screen");
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
                            child: Obx(() => Text("${l.isLoginLoading}",
                                style: SignupFont1TextStyle)),
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
                              false,
                              "Phone number, Email or User name",
                              emailController)),
                      SizedBox(height: 50),
                      Flexible(
                          flex: 1,
                          child:
                              TextInput(true, "Password", passwordController)),
                    ],
                  ),
                )),
            Expanded(flex: 1, child: SignButton(_onClickSignIn)),
            Expanded(
                flex: 2,
                child: Obx(() {
                  if (l.isLoginLoading.value) {
                    return Center(
                        child: Lottie.asset('assets/images/loaderLottie.json',
                            width: 100, height: 100));
                  } else {
                    return Column(
                      children: <Widget>[
                        // Spacer(),
                        Expanded(
                            flex: 2,
                            child: FbButton(
                                "Sign In with facebook", _onClickFacebook)),
                        Expanded(
                            flex: 2,
                            child:
                                AppleLogo("Sign In with Apple", _onClickApple)),
                        Expanded(
                            flex: 1,
                            child: AlreadySignUp(
                                "Back To Regsiter", _onClickLabelButton)),
                        Spacer(),
                      ],
                    );
                  }
                })),
          ],
        ),
      ),
    );
  }
}
