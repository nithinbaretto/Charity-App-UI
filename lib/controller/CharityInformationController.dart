import 'package:charity_app/models/CharityInformationModel.dart';
import 'package:get/get.dart';

class CharityInformationController extends GetxController {
  var information = List<CharityInformationModel>.filled(
          1, CharityInformationModel([], "", "", "", "", "", []),
          growable: true)
      .obs;

  @override
  void onInit() {
    super.onInit();
    fetchInformation();
  }

  Future fetchInformation() async {
    await Future.delayed(Duration(seconds: 2));

    var charityInformation = [
      CharityInformationModel(
          [
            "https://gogetfunding.com/wp-content/uploads/2020/10/6914555/img/mimg_6914555_1603266370.jpg",
            "https://www.scross.co.za/wp-content/uploads/2016/10/poor_children.jpg",
            "https://gogetfunding.com/wp-content/uploads/2017/06/5238748/img/474770-boy-1354582632-201-640x480.jpg",
            "https://i2-prod.irishmirror.ie/incoming/article12608980.ece/ALTERNATES/s1200/concern-charity-africa-270518.jpg",
            "https://i2-prod.irishmirror.ie/incoming/article12608980.ece/ALTERNATES/s1200/concern-charity-africa-270518.jpg"
          ],
          "Providing Access to safe water and hygine access",
          "500000",
          "Akshay Kumar",
          "7406411821",
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
          [Address("Kundapur City", "Kundapur City", "Udupi", "South India")]),
    ];
    information.value = charityInformation;
  }
}
