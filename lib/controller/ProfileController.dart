import 'package:charity_app/models/ProfileModel.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var profileValues = List<ProfileModel>.filled(
          1,
          ProfileModel(
              basicInformation: [],
              charityBalance: [],
              donatedBalance: [],
              donationsToMyCharity: [],
              myDonations: []),
          growable: true)
      .obs;

  @override
  void onInit() {
    super.onInit();
    fetchProfileinformation();
  }

  Future fetchProfileinformation() async {
    await Future.delayed(Duration(seconds: 2));
    var profileItems = [
      ProfileModel(basicInformation: [
        "https://www.newmynamepix.com/upload/post/sample/1584374992_Attitude_Boy_Whatsapp_Dp_With_Name_Profile_Images.jpg",
        "Akshay Kumar",
        "akshaykumar@gmail.com",
        "7406411821",
        "20000"
      ], donatedBalance: [
        "50000",
        "1000"
      ], charityBalance: [
        "5000",
        "30"
      ], myDonations: [
        MyDonations("Kantha Bopha", "8000", "100"),
        MyDonations("Food Service", "5000", "70"),
      ], donationsToMyCharity: [
        DonationsToMyCharity("Anil Kumar", "1000", "10"),
        DonationsToMyCharity("akshay Kumar", "5000", "50"),
      ]),
    ];
    profileValues.value = profileItems;
  }
}
