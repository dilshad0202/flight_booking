import 'package:flight_book_app/constants/src.dart';
import 'package:flight_book_app/models/flight_data.dart';
import 'package:flight_book_app/models/price_data.dart';
import 'package:flight_book_app/models/travelInspiartion.dart';


class Mocks {
  static List<PriceData> priceData = [
    PriceData(startDate: "Mar 22", endDate: "Mar 23", price: 741),
    PriceData(startDate: "Mar 23", endDate: "Mar 24", price: 721),
    PriceData(startDate: "Mar 24", endDate: "Mar 25", price: 750),
    PriceData(startDate: "Mar 25", endDate: "Mar 26", price: 800),
    PriceData(startDate: "Mar 26", endDate: "Mar 27", price: 802),
    PriceData(startDate: "Mar 27", endDate: "Mar 28", price: 900),
  ];

  static List<TravelInspiration> travelInspirationList = [
    TravelInspiration(
      destination: "Dubai",
      price: "AED 867",
      tripType: "Economy round trip",
      fromLocation: "Saudi Arabia",
      imageSrc: "${kImagesSrc}dubai.png",
    ),
    TravelInspiration(
      destination: "Kuwait",
      price: "AED 950",
      tripType: "Economy round trip",
      fromLocation: "Dubai",
      imageSrc: "${kImagesSrc}kuwait.png",
    ),
  ];

  static List<FlightData> flightMockData = [
    FlightData(
      onwardData: TripData(
        currencyCode: "AED",
        tripType: "Onward",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 409.0,
        departureTime: "14:35",
        arrivalTime: "21:55",
        departureLocation: "BLR - Bengaluru",
        arrivalLocation: "DXB - Dubai",
        duration: "4h 30m",
        stops: 2,
      ),
      returnData: TripData(
        currencyCode: "AED",
        tripType: "Return",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 359.0,
        departureTime: "21:55",
        arrivalTime: "14:35",
        departureLocation: "DXB - Dubai",
        arrivalLocation: "BLR - Bengaluru",
        duration: "4h 30m",
        stops: 2,
      ),
    ),
    FlightData(
      onwardData: TripData(
        currencyCode: "AED",
        tripType: "Onward",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 409.0,
        departureTime: "14:35",
        arrivalTime: "21:55",
        departureLocation: "BLR - Bengaluru",
        arrivalLocation: "DXB - Dubai",
        duration: "4h 30m",
        stops: 2,
      ),
      returnData: TripData(
        currencyCode: "AED",
        tripType: "Return",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 359.0,
        departureTime: "21:55",
        arrivalTime: "14:35",
        departureLocation: "DXB - Dubai",
        arrivalLocation: "BLR - Bengaluru",
        duration: "4h 30m",
        stops: 2,
      ),
    ),
    FlightData(
      onwardData: TripData(
        currencyCode: "AED",
        tripType: "Onward",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 409.0,
        departureTime: "14:35",
        arrivalTime: "21:55",
        departureLocation: "BLR - Bengaluru",
        arrivalLocation: "DXB - Dubai",
        duration: "4h 30m",
        stops: 2,
      ),
      returnData: TripData(
        currencyCode: "AED",
        tripType: "Return",
        airLineIconSrc: "assets/mocks/indonesia.png",
        airline: "Garuda Indonesia",
        price: 359.0,
        departureTime: "21:55",
        arrivalTime: "14:35",
        departureLocation: "DXB - Dubai",
        arrivalLocation: "BLR - Bengaluru",
        duration: "4h 30m",
        stops: 2,
      ),
    )
  ];
}
