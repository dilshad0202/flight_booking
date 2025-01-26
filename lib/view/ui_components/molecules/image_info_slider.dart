import 'package:flight_book_app/models/travelInspiartion.dart';
import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class ImageInfoSlider extends StatelessWidget {
  const ImageInfoSlider({
    super.key,
    required this.data,
  });

  final TravelInspiration data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppComponentSize.radius),
          image: DecorationImage(
              image: AssetImage(data.imageSrc), fit: BoxFit.cover)),
      alignment: Alignment.bottomCenter,
      height: 300,
      width: 200,
      margin: const EdgeInsets.only(right: AppSpacing.sm),
      padding:
          const EdgeInsets.only(bottom: AppSpacing.md, left: AppSpacing.md),
      child: Stack(
        fit: StackFit.expand,
        children: [
          WithLayout(mainAxisAlignment: MainAxisAlignment.end, children: [
            BaseText(
              "From ${data.price}",
              fontSize: AppFontSize.xs,
              color: AppColors.overLayTextColor,
              fontWeight: FontWeight.w500,
            ),
            BaseText(
              data.tripType,
              color: AppColors.overLayTextColor,
              fontWeight: FontWeight.w400,
              fontSize: AppFontSize.sm,
            ),
            BaseText(
              data.destination,
              color: AppColors.overLayTextColor,
              fontSize: AppFontSize.lg,
              fontWeight: FontWeight.w600,
            )
          ])
        ],
      ),
    );
  }
}
