import 'package:charity_app/models/AccountDetails.dart';
import 'package:get/get.dart';

class AccountDetailsController extends GetxController {
  final accountDetails =
      List<AccountDetails>.filled(1, AccountDetails("", ""), growable: true)
          .obs;

  @override
  void onInit() {
    super.onInit();
    fetchAccountDetails();
  }

  Future fetchAccountDetails() async {
    await Future.delayed(Duration(seconds: 2));

    var fetchedAccountDetails = [
      AccountDetails("0201000226195", "Nithin Samith"),
      AccountDetails("0201000226196", "Akshay Kumar"),
      AccountDetails("0201000226197", "Anil Kumar"),
      AccountDetails("0201000226198", "Karthik Achar"),
    ];
    accountDetails.value = fetchedAccountDetails;
  }
}
