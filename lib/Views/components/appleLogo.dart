import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class AppleLogo extends StatelessWidget {
  final String appleLogoText;
  final VoidCallback? onPressApplebutton;

  const AppleLogo(this.appleLogoText, this.onPressApplebutton);
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
            color: Colors.black,
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
                  "assets/images/applelogo.png",
                  width: 25,
                  height: 25,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    appleLogoText,
                    style: facebookTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
      onTap: onPressApplebutton,
    ));
  }
}
