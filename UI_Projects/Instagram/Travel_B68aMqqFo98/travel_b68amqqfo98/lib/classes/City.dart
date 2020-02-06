
import 'dart:math';

import 'package:travel_b68amqqfo98/classes/Resort.dart';

class City {

  String _name;
  List<Resort> _resorts;
  
  City() {
    int _locationIndex = Random.secure().nextInt(Resort.locationToResort.length);
    this._name = Resort.locationToResort.keys.toList()[_locationIndex];
    this._resorts = Resort.generateRandomResorts(this._name);
  }
  
  
  
  
  String get name {
    return _name;
  }

  List<Resort> get resorts {
    return this._resorts;
  }
}