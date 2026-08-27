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

  static String? checkPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain a number';
    }

    return null;
  }

  static String? checkUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a username';
    }

    if (!RegExp(r'^[a-zA-Z0-9_]{3,20}$').hasMatch(value)) {
      return 'Username must be 3-20 characters and contain only letters, numbers, and underscores';
    }

    return null;
  }
}
