class AppErrorMessages {
  AppErrorMessages._();

  static String cannotBeEmpty(final String value, [final String? customEndingText]) => '$value cannot be empty.${customEndingText != null ? ' $customEndingText' : ''}';

  static String invalid(final String value, [final String? customEndingText]) => 'Invalid $value.${customEndingText != null ? ' $customEndingText' : ''}';
}
