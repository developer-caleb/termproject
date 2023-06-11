import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_style.dart';

class AppTheme {
  static final light = ThemeData(
      brightness: Brightness.light,
      textTheme: const TextTheme(
        displayLarge: TextStyle(),
        displayMedium: TextStyle(),
        displaySmall: TextStyle(),
        headlineLarge: AppTextStyles.heading1,
        headlineMedium: AppTextStyles.heading2,
        headlineSmall: AppTextStyles.heading3,
        titleLarge: TextStyle(),
        titleMedium: TextStyle(),
        titleSmall: TextStyle(),
        bodyLarge: TextStyle(),
        bodyMedium: TextStyle(),
        bodySmall: TextStyle(),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        iconTheme: IconThemeData(
          color: AppColors.black,
        ),
      )
      //     textTheme: TextTheme(
      //       bodyText2: TextStyle(color: AppColors.textBlack1, fontSize: 20),
      //     )),
      );
  static final dark = ThemeData.dark().copyWith();
}
