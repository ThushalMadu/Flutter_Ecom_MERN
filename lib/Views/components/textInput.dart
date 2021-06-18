import 'package:bestarchi/Controller/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class TextInput extends StatelessWidget {
  final bool passText;
  final String placeHolder;

  TextInput(this.passText, this.placeHolder);
  final u = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    double widthr = MediaQuery.of(context).size.width;
    double heightr = MediaQuery.of(context).size.height;
    return Container(
      width: widthr - 50,
      height: heightr / 15,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 1.0, spreadRadius: 0.1)
          ]),
      alignment: Alignment.center,
      child: TextField(
        style: TextInputStyle,
        obscureText: passText,
        decoration: InputDecoration(
          hintText: placeHolder,
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
            borderSide: BorderSide(color: Colors.white, width: 0.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
            borderSide: BorderSide(color: Colors.white, width: 0.0),
          ),
        ),
        onChanged: (text) {
          print('$text');
          u.updateUserName(text);
        },
      ),
    );
  }
}
