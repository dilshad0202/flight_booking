


import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
        height: 0,
        color: AppColors.dividerColor,
    );
  }
}