part of 'design_utils.dart';

class AppValidators {

  static String? emptyNullValidator(
    String? value, {
    String? errorMessage = "Required!",
  }) {
    //TODO: Add Extra Validation If Needed
    if (value?.trim().isEmpty ?? true) return errorMessage;
    return null;
  }

  static String? passwordConfirmValidator({
    String? value,
    String? confirmValue,
  }) {
    //TODO: Add Extra Validation If Needed
    if (value?.trim().isEmpty ?? true){
      return "Required!";
    }
    else if(value != confirmValue){
      return "New and Confirm password didn't matched!";
    } else{
      return null;
    }
  }

  static String? phoneValidator(String? value) {
    //TODO: Add Extra Validation If Needed
    if (value == null || value.isEmpty) {
      return "Required!";
    } else if (!RegExp(r'^\+?[0-9]\d{1,20}$').hasMatch(value)){
      return "Please enter a valid phone number!";
    }
    return null;
  }

  static String? amountValidator(String? value) {
    //TODO: Add Extra Validation If Needed
    if (value?.trim().isEmpty ?? true) {
      return "Required!";
    } else if (value != null && value.isNotEmpty && double.parse(value) < 0){
      return "Amount can't be smaller than 1!";
    }
    return null;
  }

  static String? discountValidator(String? value) {
    //TODO: Add Extra Validation If Needed
    if (value?.trim().isEmpty ?? true) {
      return "Required!";
    } else if (value != null && value.isNotEmpty && double.parse(value) < 1){
      return "Amount can't be smaller than 1!";
    } else if (value != null && value.isNotEmpty && double.parse(value) > 100){
      return "Amount can't be larger than 100!";
    }
    return null;
  }

  static String? emailValidator(String? value) {
    //TODO: Add Extra Validation If Needed
    if (value == null || value.isEmpty) {
      return "Email Required!";
    } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)){
      return "Please enter a valid email address!";
    }
    return null;
  }
}

