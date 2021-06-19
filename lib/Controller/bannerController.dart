import 'package:bestarchi/Models/bannerModel.dart';
import 'package:bestarchi/Services/bannerService.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  var isLoading = true.obs;
  List<Banner> bannerList = List<Banner>.empty(growable: true).obs;
  @override
  void onInit() {
    fetchData();
    super.onInit();
  }

  void fetchData() async {
    try {
      isLoading(true);

      var statics = await BannerApiService.fetchData();
      print(statics);
      if (statics != null) {
        bannerList.assignAll(statics);
      } else {
        print("Not get value");
      }
    } finally {
      isLoading(false);
    }
  }
}
