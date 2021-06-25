import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class AddToCart extends StatelessWidget {
  final VoidCallback? onPressAddCart;

  const AddToCart(this.onPressAddCart);

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
          color: Colors.brownButtonColorNew,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              offset: Offset(1, 1), // Shadow position
            ),
          ],
        ),
        child: Text(
          "Add to Cart",
          style: SignInButtonStyle,
          textAlign: TextAlign.center,
        ),
      ),
      onTap: onPressAddCart,
    ));
  }
}
