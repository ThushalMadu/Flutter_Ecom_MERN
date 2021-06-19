import 'dart:convert';

List<Item> itemFromJson(String str) =>
    List<Item>.from(json.decode(str).map((x) => Item.fromJson(x)));

String itemToJson(List<Item> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Item {
  Item({
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

  factory Item.fromJson(Map<String, dynamic> json) => Item(
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
