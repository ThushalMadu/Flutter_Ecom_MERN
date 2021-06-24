import 'package:bestarchi/Controller/UserController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class TextInput extends StatefulWidget {
  final bool passText;
  final String placeHolder;
  TextEditingController textEditingController;

  TextInput(this.passText, this.placeHolder, this.textEditingController);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
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
        obscureText: widget.passText,
        decoration: InputDecoration(
          hintText: widget.placeHolder,
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
        controller: widget.textEditingController,
        // onChanged: (text) {
        //   print('$text');
        //   u.updateUserName(text);
        // },
      ),
    );
  }
}
