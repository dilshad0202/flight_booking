

import 'package:flight_book_app/view/screens/flight_chart_screen.dart';
import 'package:flight_book_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';



Map<String, Widget Function(BuildContext)> routes = {
    HomeScreen.route : (contex) => const HomeScreen(),
    FlightChartScreen.route : (contex) => const FlightChartScreen()
};
