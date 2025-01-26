import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flutter/material.dart';

class ButtonUI extends StatelessWidget {
  const ButtonUI(
      {super.key, required this.title, required this.onpRess, this.width});

  final String title;
  final void Function() onpRess;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpRess,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppComponentSize.buttonRadius)),
      color: AppColors.primaryButtonColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: BaseText(
        title,
        color: AppColors.overLayTextColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
