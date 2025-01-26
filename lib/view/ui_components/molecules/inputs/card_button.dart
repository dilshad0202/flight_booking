import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  const CardButton(
      {super.key,
      this.height,
      this.horizontalPadding,
      this.subtitle,
      required this.title,
      this.textColor,
      this.borderColor,
      this.titleFontSize,
      this.backgroundColor,
      this.onPress,
      this.isSelected = false});
  final String title;
  final String? subtitle;
  final Color? borderColor;
  final double? titleFontSize;
  final Color? textColor;
  final double? horizontalPadding;
  final Color? backgroundColor;
  final bool isSelected;
  final void Function()? onPress;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      minWidth: 0,
      shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 0.5,
              color: borderColor ??
                  (isSelected
                      ? AppColors.activeGreen
                      : AppColors.dividerColor)),
          borderRadius:
              BorderRadius.circular(AppComponentSize.cardButtonRadius)),
      elevation: 0,
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding ?? AppSpacing.md),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      color: backgroundColor,
      onPressed: onPress,
      child: WithLayout(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BaseText(
              title,
              color: textColor ?? AppColors.primaryTextColor,
              fontWeight: FontWeight.w600,
              fontSize: titleFontSize ?? AppFontSize.xs,
            ),
            if (subtitle != null)
              BaseText(
                  fontSize: AppFontSize.xs,
                  subtitle!,
                  color: AppColors.primaryTextColor,
                  fontWeight: FontWeight.w500)
          ]),
    );
  }
}
