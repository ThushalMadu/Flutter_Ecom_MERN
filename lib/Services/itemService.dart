import 'dart:convert';

import 'package:bestarchi/Models/itemModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiService {
  static var client = http.Client();

  static Future<List<Item>> fetchData() async {
    var respone = await client.get(Uri.parse(
        'https://aqueous-temple-31849.herokuapp.com/items/showAllItems'));
    if (respone.statusCode == 200) {
      print(respone.body);

      return itemFromJson(respone.body);
    }
    return fetchData();
  }
}
