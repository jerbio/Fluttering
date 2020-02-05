// import 'dart:ffi';
import 'dart:math';

import 'package:uuid/uuid.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
var uuid = Uuid();

class Resort {
  
  static const  _maxStarLevel = 5.0;
  static const _maxCostPerNight = 10000;
  String _name = "";
  String _id = uuid.v4();
  String _desciption = "";
  String _city = "";
  double _costPerNight = 0.0;
  double _starLevel = 0.0;
  List<String> _images = ["Image0", "Image1", "Image2", "Image3", "Image4"];


  String get name {
    return _name;
  }

  String get description {
    return _desciption;
  }

  List<String> get locations {
    return _images;
  }

  static Map<String, List<String>> locationToResort = {
    'antigua': ["Mandana Villa"],
    'bali': ["mandalay"] 
  };
  // static List<String> city = ["antigua", "bali"];
  // static List<String> resortLocations = ["antigua", "bali"];
  static Resort generateRandom () {
    var descriptionText = lipsum.createParagraph();
    int locationIndex = Random.secure().nextInt(locationToResort.length - 1);
    String locationKey = locationToResort.keys.toList()[locationIndex];
    List<String> resortNames = locationToResort[locationKey];
    int resortNameIndex = Random.secure().nextInt(1);

    var retValue = new Resort();
    retValue._desciption = descriptionText;
    retValue._starLevel = Random.secure().nextDouble() * _maxStarLevel;
    retValue._costPerNight = Random.secure().nextDouble() * _maxCostPerNight;
    retValue._name = resortNames[resortNameIndex];
    retValue._city = locationKey;
    return retValue;
  }

  static List<Resort> generateRandomResorts(int count) {
    List<Resort> retValue = new List<Resort>();
    for(int i=0; i< count; i++) {
      Resort resort = generateRandom();
      retValue.add(resort);
    }

    return retValue;
  }
}