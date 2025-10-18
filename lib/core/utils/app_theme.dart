import 'package:ayol_uchun/core/utils/colors.dart';
import 'package:ayol_uchun/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: AppTextStyles.h4SemiBold,
      )
  );
}