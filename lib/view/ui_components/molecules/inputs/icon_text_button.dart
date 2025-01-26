import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton(
      {super.key,
      required this.iconSrc,
      required this.text,
      this.onPress,
      this.textIconColor,
      this.isExpandable = false,
      this.fontSize,
      this.iconAlignemnt = IconAlignment.start,
      this.spaceBetween,
      this.iconSize});

  final String iconSrc;
  final String text;
  final double? fontSize;
  final void Function()? onPress;
  final double? spaceBetween;
  final Color? textIconColor;
  final IconAlignment iconAlignemnt;
  final double? iconSize;
  final bool isExpandable;

  @override
  Widget build(BuildContext context) {
    if (!isExpandable) {
      return TextButton.icon(
        iconAlignment: iconAlignemnt,
        onPressed: onPress ?? () {},
        label: BaseText(
          text,
          fontWeight: FontWeight.w400,
          color: textIconColor ?? AppColors.secondaryTextColor,
        ),
        icon: SvgPicture.asset(
          iconSrc,
          colorFilter: ColorFilter.mode(
              textIconColor ?? AppColors.secondaryTextColor, BlendMode.srcIn),
        ),
      );
    }
    return TextButton(
      style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
      onPressed: () {},
      child: WithLayout(
        orientation: LayoutOrientation.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: iconSize ?? AppComponentSize.iconSize,
            width: iconSize ?? AppComponentSize.iconSize,
            child: SvgPicture.asset(
              iconSrc,
            ),
          ),
          SizedBox(
            width: spaceBetween ?? AppSpacing.md,
          ),
          BaseText(
            text,
            fontWeight: FontWeight.w400,
            color: AppColors.secondaryTextColor,
          )
        ],
      ),
    );
  }
}
