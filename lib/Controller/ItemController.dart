import 'package:bestarchi/Models/itemModel.dart';
import 'package:bestarchi/Services/itemService.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  var isLoading = true.obs;
  List<Item> itemList = List<Item>.empty(growable: true).obs;
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);

      var statics = await ApiService.fetchData();
      print(statics);
      if (statics != null) {
        itemList.assignAll(statics);
      } else {
        print("Not get value");
      }
    } finally {
      isLoading(false);
    }
  }
}
