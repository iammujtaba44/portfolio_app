import 'package:flutter/material.dart';

extension TextThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;

  TextStyle? get titleLargeWithBlackAndBold => textTheme.titleLarge?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      );

  TextStyle? get titleLargeWithWhiteAndBold => textTheme.titleLarge?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );

  bool get isDesktop => MediaQuery.of(this).size.width >= 1024;

  bool get isTablet =>
      MediaQuery.of(this).size.width >= 768 && MediaQuery.of(this).size.width < 1024;

  bool get isMobile => MediaQuery.of(this).size.width < 768;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  // Colors
  Color get primaryTextColor => isDarkMode ? Colors.white : Colors.black;
  Color get reversePrimaryTextColor => isDarkMode ? Colors.black : Colors.white;
  Color get secondaryTextColor => isDarkMode ? Colors.white24 : Colors.black54;
  Color get primaryColor => Theme.of(this).colorScheme.primary;
  Color get primaryColorOnSurface => Theme.of(this).colorScheme.onPrimary;
  Color get secondaryColor => Theme.of(this).colorScheme.secondary;
  Color get primaryColorWithOpacity1 => Theme.of(this).colorScheme.primary.withOpacity(0.1);
  Color get descriptionColor => isDarkMode ? Colors.grey[400]! : Colors.grey[600]!;
  Color get surfaceColor => Theme.of(this).colorScheme.surface;
}
