import 'package:get/get.dart';

class FilterPageController extends GetxController {
  var requestCategory = "".obs;
  var ordering = "".obs;

  @override
  void onInit() {
    super.onInit();
    requestCat("Homeless");
    orderingCat("Request Date");
  }

  requestCat(String val) {
    requestCategory.value = val;
  }

  orderingCat(String val) {
    ordering.value = val;
  }
}
