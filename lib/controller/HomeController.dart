import 'package:charity_app/models/HomeModel.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  // ignore: deprecated_member_use
  var donationList = List<HomeModel>.filled(
          1,
          HomeModel(
              "https://gogetfunding.com/wp-content/uploads/2020/10/6914555/img/mimg_6914555_1603266370.jpg",
              "Providing Access to safe water and hygine access",
              "The legal defination of the charitable organization is varies BTW contries",
              101,
              1000,
              500),
          growable: true)
      .obs;

  Future fetchProducts() async {
    await Future.delayed(Duration(seconds: 2));

    var listOfDonations = [
      HomeModel(
          "https://gogetfunding.com/wp-content/uploads/2020/10/6914555/img/mimg_6914555_1603266370.jpg",
          "Providing Access to safe water and hygine access",
          "The legal defination of the charitable organization is varies BTW contries",
          101,
          1000,
          500),
      HomeModel(
          "https://www.scross.co.za/wp-content/uploads/2016/10/poor_children.jpg",
          "Providing Access to safe water and hygine access",
          "The legal defination of the charitable organization is varies BTW contries",
          201,
          500,
          300),
      HomeModel(
          "https://gogetfunding.com/wp-content/uploads/2017/06/5238748/img/474770-boy-1354582632-201-640x480.jpg",
          "Providing Access to safe water and hygine access",
          "The legal defination of the charitable organization is varies BTW contries",
          300,
          2000,
          1000),
      HomeModel(
          "https://i2-prod.irishmirror.ie/incoming/article12608980.ece/ALTERNATES/s1200/concern-charity-africa-270518.jpg",
          "Providing Access to safe water and hygine access",
          "The legal defination of the charitable organization is varies BTW contries",
          150,
          1000,
          500)
    ];
    donationList.value = listOfDonations;
  }
}
