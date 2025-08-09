import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: AppColors.primary),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonThemeData =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: AppColors.primary),
      textStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );
}
