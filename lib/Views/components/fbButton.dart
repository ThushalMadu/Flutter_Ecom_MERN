import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class FbButton extends StatelessWidget {
  final String fbTextButton;
  final VoidCallback? onPressbutton;
  const FbButton(this.fbTextButton, this.onPressbutton);
  @override
  Widget build(BuildContext context) {
    double widthr = MediaQuery.of(context).size.width;
    double heightr = MediaQuery.of(context).size.height;
    return Center(
        child: GestureDetector(
      child: Container(
          alignment: Alignment.center,
          width: widthr / 1.2,
          height: heightr / 15,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(1, 2), // Shadow position
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(
                  "assets/images/iconsfacebook.png",
                  width: 30,
                  height: 30,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    fbTextButton,
                    style: facebookTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
      onTap: onPressbutton,
    ));
  }
}
