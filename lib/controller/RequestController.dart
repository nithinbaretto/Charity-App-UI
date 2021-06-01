import 'package:charity_app/models/RequestModel.dart';
import 'package:get/get.dart';

class RequestController extends GetxController {
  var requestInformation =
      List<RequestModel>.filled(1, RequestModel("", "", "", ""), growable: true)
          .obs;

  @override
  void onInit() {
    super.onInit();
    fetchRequestItems();
  }

  Future fetchRequestItems() async {
    Future.delayed(Duration(seconds: 2));

    var information = [
      RequestModel(
          "https://gogetfunding.com/wp-content/uploads/2020/10/6914555/img/mimg_6914555_1603266370.jpg",
          "Providing Access to safe water and hygine access",
          "10000",
          "50000"),
      RequestModel(
          "https://www.scross.co.za/wp-content/uploads/2016/10/poor_children.jpg",
          "Providing Access to safe water and hygine access",
          "5000",
          "30000"),
      RequestModel(
          "https://gogetfunding.com/wp-content/uploads/2017/06/5238748/img/474770-boy-1354582632-201-640x480.jpg",
          "Providing Access to safe water and hygine access",
          "30000",
          "60000")
    ];
    requestInformation.value = information;
  }
}
