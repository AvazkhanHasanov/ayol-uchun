import 'package:flutter/material.dart';

class AppColors {

  static const Color red = Color(0xFFF5365C);
  static const Color blue = Color(0xFF324CDD);
  static const Color green = Color(0xFF4FD69C);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color textLight=Color(0xFFADB5BD);


  // ⚙️ Text & Neutral Colors
  static const Color textGrey = Color(0xFF8898AA);
  static const Color grey = Color(0xFF8898AA);
  static const Color primaryText = Color(0xFF5E72E4);
  static const Color defaultText = Color(0xFF172B4D);

  // ⚠️ Alerts & Warning
  static const Color warning = Color(0xFFFC7C5F);


  static const List<Color> pinkGradient = [
    Color(0xFFE6007E),
    Color(0xFFF5365C),
  ];

  static const List<Color> blueToDarkGradient = [
    Color(0xFF324CDD),
    Color(0xFF172B4D),
  ];

  static const List<Color> purpleGradient = [
    Color(0xFF1A174D),
    Color(0xFF172B4D),
  ];


  static const List<Color> greenGradient = [
    Color(0xFF4FD69C),
    Color(0xFF2AB57D),
  ];

  static const LinearGradient mainLinearGradient = LinearGradient(
    colors: [Color(0xFF1A174D), Color(0xFF172B4D)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
