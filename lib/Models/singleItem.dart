// To parse this JSON data, do
//
//     final singleItem = singleItemFromJson(jsonString);

import 'dart:convert';

SingleItem singleItemFromJson(String str) =>
    SingleItem.fromJson(json.decode(str));

String singleItemToJson(SingleItem data) => json.encode(data.toJson());

class SingleItem {
  SingleItem({
    required this.id,
    required this.itemName,
    required this.image,
    required this.qty,
    required this.price,
    required this.v,
  });

  String id;
  String itemName;
  String image;
  int qty;
  int price;
  int v;

  factory SingleItem.fromJson(Map<String, dynamic> json) => SingleItem(
        id: json["_id"],
        itemName: json["item_name"],
        image: json["image"],
        qty: json["qty"],
        price: json["price"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "item_name": itemName,
        "image": image,
        "qty": qty,
        "price": price,
        "__v": v,
      };
}
