import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/circle_icon.dart';
import 'package:flight_book_app/view/ui_components/atoms/container.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/icon_text_button.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class FromToPicker extends StatelessWidget {
  const FromToPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        color: AppColors.backgroundSecondary,
        child: WithLayout(
            padding: AppSpacing.sm,
            crossAxisAlignment: CrossAxisAlignment.center,
            orientation: LayoutOrientation.horizontal,
            children: [
              Expanded(
                child: WithLayout(mainAxisSize: MainAxisSize.max, children: [
                  IconTextButton(
                    isExpandable: true,
                      iconSrc: "${kIconsSrc}take_off.svg", text: "From"),
                  CustomContainer(
                    margin: EdgeInsets.only(
                        left: AppSpacing.xxxl, right: AppSpacing.xxs),
                    height: 2,
                    linearGradientStart: AppColors.dividerLinearStart,
                    linearGradientEnd: AppColors.dividerLinearEnd,
                  ),
                  IconTextButton(
                       isExpandable: true,
                      iconSrc: "${kIconsSrc}location.svg", text: "To"),
                ]),
              ),
              CircleIcon(
                  backGroundColor: AppColors.circleIconBg,
                  iconSrc: "$kIconsSrc/upDown.svg")
            ]));
  }
}
