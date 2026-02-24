class Validators {
  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp _usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,20}$');

  static final RegExp _passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  static bool isValidEmail(String value) => _emailRegex.hasMatch(value);

  static bool isValidUsername(String value) => _usernameRegex.hasMatch(value);

  static bool isValidPassword(String value) => _passwordRegex.hasMatch(value);

  static bool hasMinLength(String value, int min) => value.length >= min;

  static bool hasMaxLength(String value, int max) => value.length <= max;

  static bool inRange(num value, num min, num max) =>
      value >= min && value <= max;

  static bool isValidUrl(String value) {
    final uri = Uri.tryParse(value);
    return uri != null && (uri.hasScheme && uri.hasAuthority);
  }
}
