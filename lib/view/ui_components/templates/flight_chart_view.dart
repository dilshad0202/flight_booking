import 'package:flight_book_app/models/price_data.dart';
import 'package:flight_book_app/utils/app_spacing.dart';
import 'package:flight_book_app/utils/mockData.dart';
import 'package:flight_book_app/view/ui_components/molecules/trip_detail_card.dart';
import 'package:flight_book_app/view/ui_components/molecules/layout_helper.dart';
import 'package:flight_book_app/view/ui_components/organism/card_buton_list.dart';
import 'package:flight_book_app/view/ui_components/organism/flight_list.dart';
import 'package:flutter/material.dart';

class FlightChartView extends StatelessWidget {
  const FlightChartView(
      {super.key, required this.priceDataList, required this.onPriceDataPress});

  final List<PriceData> priceDataList;
  final void Function(PriceData) onPriceDataPress;

  @override
  Widget build(BuildContext context) {
    return WithLayout(
        spacing: AppSpacing.md,
        padding: AppSpacing.md,
        children: [
          const TripDetailCard(),
          _cardButonList(),
          Expanded(
            child: FlightList(
              flightData: Mocks.flightMockData,
            ),
          ),
          // )
        ]);
  }

  CardButonList _cardButonList() {
    return CardButonList(
        onPress: () {},
        dataList: List.generate(
            priceDataList.length,
            (i) => CardButtonListData(
                title:
                    "${priceDataList[i].startDate} - ${priceDataList[i].endDate}",
                subtitle: "From AED ${priceDataList[i].price}",
                onPress: () => onPriceDataPress(priceDataList[i]))));
  }
}
