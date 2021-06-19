import 'package:bestarchi/Controller/ItemController.dart';
import 'package:bestarchi/Controller/bannerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../style.dart';

class HomeScreen extends StatelessWidget {
  // final u = Get.put(ItemController());
  final ItemController u = Get.find();
  final BannerController b = Get.find();

  @override
  Widget build(BuildContext context) {
    if (u.isLoading == true) {
      print("asdas");
    } else {
      print("sadsasad");
    }
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: 100.0,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Choose Your Favourite",
                            style: HomeTextStyle,
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Favourite Food",
                            style: HomeTextStyle,
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: b.bannerList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 100,
                        width: 250,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                        colorFilter: new ColorFilter.mode(
                                            Colors.black.withOpacity(0.1),
                                            BlendMode.darken),
                                        image: NetworkImage(
                                            "${b.bannerList[index].image}"),
                                        fit: BoxFit.cover,
                                      )),
                                  child: Scaffold(
                                    backgroundColor: Colors.transparent,
                                    body: Column(
                                      children: <Widget>[
                                        Expanded(
                                            flex: 1,
                                            child: Container(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  "${b.bannerList[index].itemName}",
                                                  style: ImageBannerTextStyle,
                                                  textAlign: TextAlign.center,
                                                ))),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        // title: Text('${u.itemList[index].itemName}'),
                      );
                    },
                  ),
                ),
                SizedBox(
                    width: 100,
                    height: 40,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fast Food",
                            style: HomeTextStyle,
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 250.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: u.itemList.length,
                    itemBuilder: (context, index) {
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
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Image.network(
                                  '${u.itemList[index].image}',
                                  height: 85,
                                  width: 85,
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${u.itemList[index].itemName}",
                                    style: ItemListStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Fast Foods",
                                  style: ItemDesStyle,
                                  textAlign: TextAlign.center,
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Rs ${u.itemList[index].price}",
                                  style: ItemListPriceStyle,
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        // title: Text('${u.itemList[index].itemName}'),
                      );
                    },
                  ),
                ),
                SizedBox(
                    width: 100,
                    height: 40,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recently Foods",
                            style: HomeTextStyle,
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                    )),
                Container(
                  height: 400.0,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: u.itemList.length,
                    itemBuilder: (context, index) {
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
                                  '${u.itemList[index].image}',
                                  height: 60,
                                  width: 60,
                                )),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${u.itemList[index].itemName}",
                                    style: ItemListStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Rs ${u.itemList[index].price}",
                                  style: ItemListPriceStyle,
                                  textAlign: TextAlign.center,
                                )),
                          ],
                        ),
                        // title: Text('${u.itemList[index].itemName}'),
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
