import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      fontFamily: AppFonts.metroPolis,
      tabBarTheme: ThemeValue.tabBarTheme,
      scaffoldBackgroundColor: AppColors.backgroundPrimary,
      appBarTheme: ThemeValue.appBarTheme);
}

class ThemeValue {
  static TabBarTheme tabBarTheme = TabBarTheme(
    dividerHeight: 0,
    labelPadding: const EdgeInsets.symmetric(vertical: 7),
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: AppColors.overLayTextColor,
    indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(AppComponentSize.radius),
        color: AppColors.primaryButtonColor),
  );

  static AppBarTheme appBarTheme = const AppBarTheme(
      iconTheme: IconThemeData(
          size: AppComponentSize.appBarLeadIcon,
          color: AppColors.secondaryIconColor),
      color: AppColors.appBarColor,
      titleTextStyle: TextStyle(color: AppColors.secondaryTextColor));
}
