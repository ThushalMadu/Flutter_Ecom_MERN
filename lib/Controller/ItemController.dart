import 'package:bestarchi/Models/itemModel.dart';
import 'package:bestarchi/Models/singleItem.dart';
import 'package:bestarchi/Services/itemService.dart';
import 'package:get/get.dart';

class ItemController extends GetxController {
  var isLoading = true.obs;
  List<Item> itemList = List<Item>.empty(growable: true).obs;
  var SinglesItem = 0.obs;
  // RxList<Item> itemsCart = RxList<Item>();
  List<Item> itemsCart = List<Item>.empty(growable: true).obs;

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
        isLoading(false);
      } else {
        print("Not get value");
      }
    } finally {
      isLoading(false);
    }
  }

  void add(Item item) {
    itemsCart.add(item);
  }

  void removeItem(int index) async {
    itemsCart.removeAt(index);
  }
}
