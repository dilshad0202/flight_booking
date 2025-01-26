


import 'package:flight_book_app/utils/mockData.dart';
import 'package:flight_book_app/view/ui_components/molecules/custom_app_bar.dart';
import 'package:flight_book_app/view/ui_components/templates/flight_chart_view.dart';
import 'package:flutter/material.dart';

class FlightChartScreen extends StatelessWidget {
  const FlightChartScreen({super.key});

    static String route = "/flightcagrt";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: const CustomAppBar(title: "Ezy Travel"),
     body: FlightChartView(priceDataList: Mocks.priceData, onPriceDataPress: (priceData ) {  },
      
     ),
    );
  }
}