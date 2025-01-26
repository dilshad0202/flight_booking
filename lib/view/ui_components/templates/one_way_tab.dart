import 'package:flight_book_app/models/travelInspiartion.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/button.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flight_book_app/view/ui_components/organism/date_details_selctors.dart';
import 'package:flight_book_app/view/ui_components/organism/from_to_picker.dart';
import 'package:flight_book_app/view/ui_components/organism/image_slider.dart';
import 'package:flight_book_app/view/ui_components/organism/title_single_image.dart';
import 'package:flutter/material.dart';

class OneWayTabView extends StatelessWidget {
  const OneWayTabView({super.key,
  required this.adImageSrc,
  required this.addTitle,
  required this.buttonTitle,
  required this.cabinClassChange,
  required this.sliderListData,
  required this.onButtonPress,
  required this.onDeparutureChange,
  required this.onReturnChnage,
  required this.onTravelerChange,
  required this.sliderListTitle,
  
  });

  final String buttonTitle;
  final void Function() onButtonPress;

  final String sliderListTitle;
  final List<TravelInspiration> sliderListData;

  final String adImageSrc;
  final String addTitle;

  final void Function(DateTime date) onDeparutureChange;
  final void Function(DateTime date) onReturnChnage;
  final void Function(String) onTravelerChange;
  final void Function(String) cabinClassChange;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        WithLayout(spacing: AppSpacing.md, padding: AppSpacing.md, children: [
          const FromToPicker(),
          DateDetailsSelectors(
            onDeparutureChange: (date) => onDeparutureChange(date),
            onReturnChange: (date) => onDeparutureChange(date),
            onTravelerChange: (count) => onTravelerChange(count),
            cabinClassChange: (cabin) => cabinClassChange(cabin),
          ),
          Center(child: ButtonUI(title: buttonTitle, onpRess: onButtonPress)),
        ]),
        WithPaddingStart(
          padding: AppSpacing.md,
          child: SliderList(
            title: sliderListTitle,
            travelInspirationList: sliderListData
          ),
        ),
         WithPaddingTop(
          padding: AppSpacing.xl,
          child: WithPaddingHoriz(
            padding: AppSpacing.md,
            child: ImageSingleTitle(
                imagSrc: adImageSrc,
                title: addTitle),
          ),
        )
      ],
    );
  }
}
