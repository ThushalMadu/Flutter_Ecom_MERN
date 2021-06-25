import 'package:bestarchi/Controller/ItemController.dart';
import 'package:bestarchi/Views/components/addToCart.dart';
import 'package:bestarchi/Views/components/backButtonBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class SingleProductScreen extends StatelessWidget {
  final ItemController u = Get.find();

  void _onClickAddToCart(index) {
    print(index);
    print(u.itemList[index].itemName);
    u.add(u.itemList[index]);
    // print(u.itemsCart);
    Get.snackbar(
        "Item added", "${u.itemList[index].itemName} was added to your cart");
    // print("Done");
  }

  void _onPressBack() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    var index = u.SinglesItem.value;

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
      child: Column(
        children: <Widget>[
          Expanded(flex: 1, child: BackButtonBar(_onPressBack)),
          Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Image.network(
                  '${u.itemList[index].image}',
                  height: 250,
                  width: 250,
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${u.itemList[index].itemName}",
                  style: SingleTitleItemListStyle,
                  textAlign: TextAlign.center,
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "The Coca-Cola Company is an American multinational beverage corporation incorporated under Delaware's General Corporation Law and headquartered in Atlanta, Georgia. The Coca-Cola Company has interests in the manufacturing, retailing, and marketing of nonalcoholic beverage concentrates and syrups",
                  style: ItemListStyle,
                  textAlign: TextAlign.left,
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rs. ${u.itemList[index].price}",
                  style: SingleTitleItemListStyle,
                  textAlign: TextAlign.center,
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                child: AddToCart(() => _onClickAddToCart(index)),
              )),
        ],
      ),
    ));
  }
}
