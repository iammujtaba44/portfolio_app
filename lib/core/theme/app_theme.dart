import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      displayLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      displaySmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      headlineLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      headlineMedium: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      headlineSmall: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      titleLarge: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      bodyLarge: const TextStyle(fontSize: 14),
      bodyMedium: const TextStyle(fontSize: 12),
      bodySmall: const TextStyle(fontSize: 10),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).copyWith(
      displayLarge: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      displayMedium: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      displaySmall: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      headlineLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      headlineMedium: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      headlineSmall: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      titleLarge: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      bodyLarge: const TextStyle(fontSize: 14),
      bodyMedium: const TextStyle(fontSize: 12),
      bodySmall: const TextStyle(fontSize: 10),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}
