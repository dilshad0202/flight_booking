import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/models/flight_data.dart';
import 'package:flight_book_app/utils/app_colors.dart';
import 'package:flight_book_app/utils/app_font_size.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/atoms/container.dart';
import 'package:flight_book_app/view/ui_components/atoms/dash_divider.dart';
import 'package:flight_book_app/view/ui_components/atoms/horizontal_divider.dart';
import 'package:flight_book_app/view/ui_components/atoms/image_asset.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/card_button.dart';
import 'package:flight_book_app/view/ui_components/molecules/inputs/icon_text_button.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlightDetailCard extends StatelessWidget {
  const FlightDetailCard({super.key, required this.flightData});

  final FlightData flightData;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
        margin: const EdgeInsetsDirectional.symmetric(vertical: AppSpacing.xxs),
        showShadow: true,
        color: AppColors.backgroundSecondary,
        child: WithLayout(children: [
          TripWidget(tripData: flightData.onwardData),
          const HorizontalDivider(),
          TripWidget(tripData: flightData.returnData),
          const WithPaddingHoriz(padding: AppSpacing.md, child: DashDivider()),
          WithLayout(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: AppSpacing.sm,
              orientation: LayoutOrientation.horizontal,
              children: [
                Expanded(
                  child: WithPaddingStart(
                    padding: AppSpacing.md,
                    child: WithLayout(
                        spacing: AppSpacing.xxs,
                        orientation: LayoutOrientation.horizontal,
                        children: [
                          _button("Cheapest", AppColors.activeGreen),
                          _button("Reundable", AppColors.activeBlue),
                        ]),
                  ),
                ),
                const IconTextButton(
                  iconSrc: "${kIconsSrc}arrow_down.svg",
                  text: "Flight Details",
                  fontSize: AppFontSize.sm,
                  textIconColor: AppColors.highlightTextColor,
                  iconAlignemnt: IconAlignment.end,
                )
              ])
        ]));
  }

  CardButton _button(String title, Color color) {
    return CardButton(
      titleFontSize: AppFontSize.xss,
      height: 12,
      title: title,
      textColor: color,
      borderColor: color,
    );
  }
}

class TripWidget extends StatelessWidget {
  const TripWidget({
    super.key,
    required this.tripData,
  });

  final TripData tripData;

  @override
  Widget build(BuildContext context) {
    return WithLayout(
        spacing: AppSpacing.xxs,
        padding: AppSpacing.sm,
        children: [
          WithLayout(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              orientation: LayoutOrientation.horizontal,
              children: [
                BaseImage(path: tripData.airLineIconSrc),
                BaseText(
                  " ${tripData.tripType} - ${tripData.airline}",
                  color: AppColors.textExtraDark,
                  fontWeight: FontWeight.w500,
                  fontSize: AppFontSize.sm,
                ),
                const Spacer(),
                BaseText(
                  "${tripData.currencyCode} ${tripData.price.toStringAsFixed(0)}",
                  color: AppColors.activeGreen,
                  fontWeight: FontWeight.w700,
                  fontSize: AppFontSize.md,
                )
              ]),
          WithLayout(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              orientation: LayoutOrientation.horizontal,
              children: [
                _time(tripData.departureTime),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: WithLayout(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 20,
                          child: Stack(fit: StackFit.expand, children: [
                            const DashDivider(),
                            Positioned(
                                left: 0,
                                right: 0,
                                top: -4.5,
                                child: Transform.rotate(
                                    angle: 0.8,
                                    child: SvgPicture.asset(
                                        "${kIconsSrc}take_off.svg"))),
                          ]),
                        ),
                      ]),
                ),
                const Spacer(
                  flex: 1,
                ),
                _time(tripData.arrivalTime),
              ]),
          WithLayout(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              orientation: LayoutOrientation.horizontal,
              children: [
                _location(tripData.departureLocation),
                WithLayout(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BaseText(
                        tripData.duration,
                        fontSize: AppFontSize.sm,
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                      BaseText(
                        "${tripData.stops} Stops",
                        fontSize: AppFontSize.xs,
                        color: AppColors.secondaryTextColor,
                        fontWeight: FontWeight.w500,
                      )
                    ]),
                _location(tripData.arrivalLocation)
              ]),
        ]);
  }

  BaseText _time(String time) {
    return BaseText(
      time,
      color: AppColors.textExtraDark,
      fontWeight: FontWeight.w700,
      fontSize: AppFontSize.xxl,
    );
  }

  BaseText _location(String location) {
    return BaseText(
      location,
      fontSize: AppFontSize.xs,
      fontWeight: FontWeight.w400,
      color: AppColors.secondaryTextColor,
    );
  }
}
