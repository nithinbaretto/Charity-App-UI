import 'package:get/get.dart';

class Validations extends GetxController {
  nameValiadtionsError(String value) {
    if (value.isEmpty) {
      return "This field Cannot be empty";
      // error.value = "This field Cannot be empty";
    } else if (value.length < 5) {
      return "Minimum 4 characters";
    }
  }

  numberValiadtionsError(String value) {
    RegExp regExp = new RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
    if (value.isEmpty) {
      return "This field Cannot be empty";
    } else if (!regExp.hasMatch(value)) {
      return "Enter valid Mobile Number";
    }
  }

  Future submit(var _key) async {
    if (_key.currentState.validate()) {
      return "done";
    }
  }
}
