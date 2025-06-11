import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFF6B35);
  static const Color secondary2 = Color(0xFFEDAC0B);
  static const Color secondary3 = Color(0xFF0BED31);
  static const Color secondary = Color(0xFFE0E0E0);
  static const Color textPrimary = Color(0xFF2D2D2D);
  static const Color textSecondary = Color(0xFF7A7A7A);
  static const Color background = Color(0xFFF8F8F8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color inactive = Color(0xFFBDBDBD);
}

class AppTextStyles {
  static TextStyle heading = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle cardTitle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  static TextStyle cardSubtitle = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static TextStyle tabText = const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}