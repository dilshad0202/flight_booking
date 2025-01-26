

import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/atoms/image_asset.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.imageSrc, required this.title});

  final String title;
  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(
                bottom: AppComponentSize.tabBarHeight / 2),
            child: BaseImage(path: imageSrc)),
        Positioned(
          top: 12,
          left: 20,
          child: BaseText(
            title,
            color: AppColors.overLayTextColor,
            fontSize: AppFontSize.lg,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}