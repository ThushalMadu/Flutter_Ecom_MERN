import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class BackButtonBar extends StatelessWidget {
  final VoidCallback? onPressBack;

  const BackButtonBar(this.onPressBack);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: onPressBack,
                  child: Image.asset(
                    "assets/images/back.png",
                    width: 25,
                    height: 25,
                  ),
                ),
              ),
            ),
            Expanded(flex: 4, child: Text(""))
          ],
        ));
  }
}
