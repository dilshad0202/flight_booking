import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/atoms/container.dart';
import 'package:flight_book_app/view/ui_components/atoms/horizontal_divider.dart';
import 'package:flight_book_app/view/ui_components/atoms/smart_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/icon_text_button.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class TripDetailCard extends StatelessWidget {
  const TripDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
      ),
      showShadow: true,
      width: double.infinity,
      color: AppColors.backgroundSecondary,
      child: WithLayout(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          padding: AppSpacing.xxs,
          children: [
            WithPaddingVer(
              child: WithLayout(
                  spacing: AppSpacing.xxs,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const BaseText(
                      "BLR - Bengaluru to DXB - Dubai",
                      fontSize: AppFontSize.sm,
                      fontWeight: FontWeight.bold,
                    ),
                    const BaseText(
                      "Departure: Sat, 23 Mar - Return: Sat, 23 Mar",
                      fontSize: AppFontSize.xs,
                      fontWeight: FontWeight.w500,
                    ),
                    SmartText(textItems: [
                      SmartTextItem(
                          text: "(Round Trip)  ",
                          fontSize: AppFontSize.sm,
                          color: AppColors.highlightTextColor),
                      SmartTextItem(
                          text: "Modify Search",
                          isUnderLined: true,
                          color: AppColors.activeGreen)
                    ]),
                  ]),
            ),
            const HorizontalDivider(),
            WithLayout(
                padding: 0,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                orientation: LayoutOrientation.horizontal,
                children: [
                  _button(
                      text: "Sort",
                      imgSrc: '${kIconsSrc}arrow_down.svg',
                      onPress: () {}),
                  const BaseText(
                    "Non - Stop",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor,
                    fontSize: AppFontSize.sm,
                  ),
                  _button(
                      text: "Filter",
                      imgSrc: '${kIconsSrc}sort.svg',
                      onPress: () {}),
                ])
          ]),
    );
  }

  IconTextButton _button({
    required String text,
    required String imgSrc,
    required Function() onPress,
  }) {
    return IconTextButton(
      iconSrc: imgSrc,
      textIconColor: AppColors.primaryTextColor,
      text: text,
      iconAlignemnt: IconAlignment.end,
      onPress: () {},
    );
  }
}
