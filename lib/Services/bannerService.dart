import 'package:bestarchi/Models/bannerModel.dart';
import 'package:http/http.dart' as http;

class BannerApiService {
  static var client = http.Client();

  static Future<List<Banner>> fetchData() async {
    var respone = await client.get(Uri.parse(
        'https://aqueous-temple-31849.herokuapp.com/banner/showAllBanner'));
    if (respone.statusCode == 200) {
      print(respone.body);

      return bannerFromJson(respone.body);
    }
    return fetchData();
  }
}
