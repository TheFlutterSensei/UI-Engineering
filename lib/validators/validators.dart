class Validators {
  static String? checkRequired(String? value, String fieldName) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter $fieldName';
    }
    return null;
  }

  static String? checkEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email address';
    }

    if (!value.contains('@') || !value.contains('.')) {
      return 'Please enter a valid email address';
    }

    return null;
  }
}
