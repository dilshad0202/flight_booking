
import 'package:flight_book_app/utils/app_component_size.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/atoms/image_asset.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class ImageSingleTitle extends StatelessWidget {
  const ImageSingleTitle({super.key,required this.imagSrc,required this.title});

  final String title;
  final String imagSrc;

  @override
  Widget build(BuildContext context) {
    return  WithLayout(
      spacing: AppSpacing.sm,
      children: [
       BaseText(title,fontWeight: FontWeight.bold,fontSize: AppFontSize.lg,),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppComponentSize.radius),
          child: BaseImage(path: imagSrc))
        
      ],
    );
  }
}