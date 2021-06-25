import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  final VoidCallback? onPressCart;

  const CartIcon(this.onPressCart);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onPressCart,
        child: Image.asset(
          "assets/images/cart.png",
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
