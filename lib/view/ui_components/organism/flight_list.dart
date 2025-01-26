import 'package:flight_book_app/models/flight_data.dart';
import 'package:flight_book_app/view/ui_components/atoms/base_text.dart';
import 'package:flight_book_app/view/ui_components/molecules/flight_deta_card.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flutter/material.dart';

class FlightList extends StatelessWidget {
  const FlightList({super.key, required this.flightData});

  final List<FlightData> flightData;

  @override
  Widget build(BuildContext context) {
    return WithLayout(
      children: [
        BaseText("${flightData.length} Flight Found"),
        Expanded(
          child: ListView.builder(
           
              itemCount: flightData.length,
              itemBuilder: (context, i) =>
                  FlightDetailCard(flightData: flightData[i])),
        )
      ],
    );
  }
}
