import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class AlreadySignUp extends StatelessWidget {
  final String textName;
  final VoidCallback? onPressLabelbutton;

  const AlreadySignUp(this.textName, this.onPressLabelbutton);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      child: Container(
          alignment: Alignment.center,
          child: Text(
            textName,
            style: AlreadySignUpStyle,
            textAlign: TextAlign.center,
          )),
      onTap: onPressLabelbutton,
    ));
  }
}
