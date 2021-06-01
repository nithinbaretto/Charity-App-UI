import 'package:charity_app/models/SearchModel.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  var searchList =
      List<SearchModel>.filled(1, SearchModel(history: [""]), growable: true)
          .obs;

  // List.filled(1, SearchModel(history: [])).obs;

  Future fetchProducts() async {
    await Future.delayed(Duration(seconds: 2));

    var listOfSearch = [
      SearchModel(history: [
        "Type or paste JSON here",
        "Or choose a sample above",
        "quicktype will generate code in your",
        "chosen language to parse the sample data generate code in your",
        "Type or paste JSON here",
        "Or choose a sample above",
        "quicktype will generate code in your",
        "chosen language to parse the sample data"
      ])
    ];
    searchList.value = listOfSearch;
  }
}
