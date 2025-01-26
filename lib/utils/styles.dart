import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static const List<BoxShadow> boxShadow = [
    BoxShadow(
        blurRadius: 4,
        spreadRadius: 0,
        color: AppColors.shadowColor,
        offset: Offset(-2, 4)),
  ];
}
