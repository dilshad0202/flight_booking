import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/utils/mockData.dart';
import 'package:flight_book_app/view/screens/flight_chart_screen.dart';
import 'package:flight_book_app/view/ui_components/molecules/custom_app_bar.dart';
import 'package:flight_book_app/view/ui_components/organism/tab_list_with_image.dart';
import 'package:flight_book_app/view/ui_components/templates/one_way_tab.dart';
import 'package:flight_book_app/view/ui_components/templates/progress.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String route = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Search",
        onBackPress: () {},
      ),
      body: TabListWithImage(
          imageSrc: "${kImagesSrc}home.png",
          tabData: [
            TabData(
                title: "Round Trip",
                widget: const Progress(title: "Round Trip")),
            TabData(
                title: "One Way",
                widget: OneWayTabView(
                  adImageSrc: "${kImagesSrc}price_ad.png",
                  onTravelerChange: (data) {},
                  onDeparutureChange: (date) {},
                  onReturnChnage: (date) {},
                  buttonTitle: "Search Flights",
                  cabinClassChange: (cabin) {},
                  sliderListTitle: "Travel Inspiration",
                  sliderListData: Mocks.travelInspirationList,
                  addTitle: "Flight & Hotel Packages",
                  onButtonPress: () {
                    Navigator.pushNamed(context, FlightChartScreen.route);
                  },
                )),
            TabData(
                title: "Multi City",
                widget: const Progress(title: "Multi City"))
          ],
          title: "Let's start your trip"),
    );
  }
}
