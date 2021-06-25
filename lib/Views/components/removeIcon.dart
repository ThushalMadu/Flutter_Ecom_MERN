import 'package:flutter/material.dart';

class RemoveIcon extends StatelessWidget {
  final VoidCallback? onPressRemove;

  const RemoveIcon(this.onPressRemove);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onPressRemove,
        child: Image.asset(
          "assets/images/remove.png",
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
