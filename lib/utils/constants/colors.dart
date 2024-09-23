import 'package:flutter/material.dart';

class TColors {
  TColors._();
  // App Basic Colors
  static const Color primary = Color(0xFF4C9580);
  static const Color secondary = Color(0xFF242424);

  // Text Colors
  static const Color textPrimary = Color(0xFF242424);
  static const Color textSecondary = Color(0xFF797979);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF242424);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Colors.white;
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4C9580);
  static const Color buttonSecondary = Color(0xFFF6F6F6);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color.fromARGB(10, 0, 0, 0);
  static const Color borderSecondary = Color(0xFF4C9580);

  // Error an Validation Colors
  static const Color error = Color(0xFFFF0A0A);
  static const Color success = Color(0xFF4C9580);
  static const Color warning = Color(0xFFFCBB44);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades Colors
  static const Color black = Color(0xFF242424);
  static const Color darkerGrey = Color(0xFF797979);
  static const Color green = Color(0xFF4C9580);
  static const Color white = Color(0xFFFFFFFF);
}
