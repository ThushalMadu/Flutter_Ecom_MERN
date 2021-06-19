import 'dart:convert';

List<Banner> bannerFromJson(String str) =>
    List<Banner>.from(json.decode(str).map((x) => Banner.fromJson(x)));

String bannerToJson(List<Banner> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Banner {
  Banner({
    required this.id,
    required this.itemName,
    required this.image,
    required this.price,
    required this.qty,
    required this.items,
    required this.v,
  });

  String id;
  String itemName;
  String image;
  int price;
  int qty;
  List<Item> items;
  int v;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["_id"],
        itemName: json["item_name"],
        image: json["image"],
        price: json["price"],
        qty: json["qty"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "item_name": itemName,
        "image": image,
        "price": price,
        "qty": qty,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "__v": v,
      };
}

class Item {
  Item({
    required this.id,
    required this.itemName,
  });

  String id;
  String itemName;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["_id"],
        itemName: json["item_name"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "item_name": itemName,
      };
}
