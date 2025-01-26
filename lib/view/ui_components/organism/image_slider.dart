

import 'package:flight_book_app/models/travelInspiartion.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/image_info_slider.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class SliderList extends StatelessWidget {
  const SliderList({super.key,required this.travelInspirationList,required this.title});

  final List<TravelInspiration> travelInspirationList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return WithLayout(
      spacing: AppSpacing.sm,
      children: [
        BaseText(title,fontWeight: FontWeight.bold,fontSize: AppFontSize.lg,),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: travelInspirationList.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context,i){
            return ImageInfoSlider(data: travelInspirationList[i]);
          }),
        )
      ],
    );
  }
}
