import 'package:flutter/material.dart';
import 'package:ijd_creative_task/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get darkMode {
    return ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
    );
  }

  static ThemeData get lightMode {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primary,
      ),
      scaffoldBackgroundColor: AppColors.primary,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.light,
    );
  }
}
