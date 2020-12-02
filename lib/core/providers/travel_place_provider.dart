import 'package:flutter/material.dart';
import 'package:travel_plan/core/models/travel_place.dart';
import 'package:travel_plan/core/services/travel_place_services.dart';

class TravelPlaceProv extends ChangeNotifier {
  //* place
  List<TravelPlace> _places;
  List<TravelPlace> get places => _places;

  void getPlace() async {
    _places = await TravelPlaceServices.getPlaces();
    notifyListeners();
  }
}
