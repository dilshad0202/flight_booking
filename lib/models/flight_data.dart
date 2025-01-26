


class FlightData {
  FlightData({required this.onwardData, required this.returnData});

  final TripData onwardData;
  final TripData returnData;
}

class TripData {
  final String currencyCode;
  final String tripType;
  final String airline;
  final double price;
  final String departureTime;
  final String arrivalTime;
  final String departureLocation;
  final String arrivalLocation;
  final String duration;
  final String airLineIconSrc;
  final int stops;

  TripData({
    required this.currencyCode,
    required this.airline,
    required this.tripType,
    required this.airLineIconSrc,
    required this.price,
    required this.departureTime,
    required this.arrivalTime,
    required this.departureLocation,
    required this.arrivalLocation,
    required this.duration,
    required this.stops,
  });
}
