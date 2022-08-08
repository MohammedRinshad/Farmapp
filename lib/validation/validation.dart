class Validate {
  static String? phoneValidator(String value) {
    if (value.length == 10) {
      return null;
    } else {
      return "invalid";
    }
  }

  static String? passwordValidator(String value) {
    if (value.length <= 7) {
      return "invalid";
    } else {
      return null;
    }
  }

  static String? otpValidator(String value) {
    if (value.length <= 6) {
      return "invalid";
    } else {
      return null;
    }
  }
}
