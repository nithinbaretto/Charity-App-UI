import 'package:charity_app/models/TransactionDetails.dart';
import 'package:get/get.dart';

class TransactionDetailsController extends GetxController {
  final details = List<TransactionDetails>.filled(
          1, TransactionDetails("", "", "", ""),
          growable: true)
      .obs;

  @override
  void onInit() {
    super.onInit();
    fetchTransactionDetails();
  }

  Future fetchTransactionDetails() async {
    await Future.delayed(Duration(seconds: 2));

    var tansactionDetails = [
      TransactionDetails("5000", "1000", "1000", "4000")
    ];
    details.value = tansactionDetails;
  }
}
