import 'package:travel_plan/core/models/travel_place.dart';

class TravelPlaceServices {
  static Future<List<TravelPlace>> getPlaces() async {
    await Future.delayed(Duration(seconds: 3));
    return dummy_places;
  }
}
