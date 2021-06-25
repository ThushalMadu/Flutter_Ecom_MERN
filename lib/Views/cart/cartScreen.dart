import 'package:bestarchi/Controller/ItemController.dart';
import 'package:bestarchi/Views/components/removeIcon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final ItemController u = Get.find();
  void _onPressBackCart() {
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: _onPressBackCart,
                          child: Image.asset(
                            "assets/images/back.png",
                            width: 25,
                            height: 25,
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Your Cart",
                      style: YouCartTextStyle,
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 5,
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: u.itemsCart.length,
                  itemBuilder: (context, index) {
                    return new GestureDetector(child: Obx(() {
                      if (u.itemsCart.isEmpty) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Cart is empty",
                            style: HomeTextStyle,
                            textAlign: TextAlign.left,
                          ),
                        );
                      } else {
                        return Container(
                          height: 100,
                          width: 130,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10.0,
                                color: Colors.black12,
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  flex: 1,
                                  child: Image.network(
                                    '${u.itemsCart[index].image}',
                                    height: 60,
                                    width: 60,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${u.itemsCart[index].itemName}",
                                      style: ItemListStyle,
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Rs ${u.itemsCart[index].price}",
                                    style: ItemListPriceStyle,
                                    textAlign: TextAlign.center,
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: RemoveIcon(() => {
                                        setState(() {
                                          u.removeItem(index);
                                        })
                                      })),
                            ],
                          ),
                        );
                      }
                    }));
                  },
                ),
              ))
        ],
      ),
    ));
  }
}
