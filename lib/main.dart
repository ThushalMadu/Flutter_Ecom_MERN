import 'package:bestarchi/Controller/bannerController.dart';
import 'package:bestarchi/Views/home/homeScreen.dart';
import 'package:bestarchi/Views/login/loginScreen.dart';
import 'package:bestarchi/Views/signUp/signUpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller/ItemController.dart';
import 'style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final u = Get.put(ItemController());
  final c = Get.put(BannerController());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter MVC Archi',
      theme: _themeData(),
      home: SignUpScreen(),
      getPages: [
        GetPage(name: "/login_screen", page: () => LoginScreen()),
        GetPage(name: "/signup_screen", page: () => SignUpScreen()),
        GetPage(name: "/home_screen", page: () => HomeScreen()),
      ],
      initialRoute: "/",
    );
  }

  ThemeData _themeData() {
    return ThemeData(
        appBarTheme:
            AppBarTheme(textTheme: TextTheme(headline6: AppBarTextStyle)),
        textTheme:
            TextTheme(headline6: BodyTextMainStyle, bodyText1: BodyTextStyle));
  }
}
