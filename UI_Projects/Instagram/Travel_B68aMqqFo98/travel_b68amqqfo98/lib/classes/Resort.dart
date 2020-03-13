// import 'dart:ffi';
import 'dart:math';

import 'package:uuid/uuid.dart';
import 'package:lipsum/lipsum.dart' as lipsum;
var uuid = Uuid();

class Resort {
  
  static const  _maxStarLevel = 5.0;
  static const _maxCostPerNight = 1000;
  String _name = "";
  String _id = uuid.v4();
  String _desciption = "";
  String _city = "";
  double _costPerNight = 0.0;
  double _starLevel = 0.0;
  bool _isFavorite = false;
  List<String> _images = ["0", "1"];
  int imageIndex = Random.secure().nextInt(1);


  String get name {
    return _name;
  }

    String get city {
    return _city;
  }

  String get description {
    return _desciption;
  }

  bool get isFavorite {
    return _isFavorite;
  }

  List<String> get locations {
    return _images;
  }

  String get imagePath {
    String imagePath = _images[imageIndex];
    String retValue = "images/"+ this.city+"/"+this.name +"/"+imagePath+".jpg";
    return retValue;
  }

  double get costPertNight {
    return this._costPerNight;
  }

  static Map<String, List<String>> locationToResort = {
    'antigua': ["Halcyon Heights", "Valley View"],
    'bali': ["2-BR Designer", "Tropical Suite Villa", "A Hidden Oasis"] 
  };
  // static List<String> city = ["antigua", "bali"];
  // static List<String> resortLocations = ["antigua", "bali"];
  static Resort generateRandom (String city ) {
    var descriptionText = lipsum.createParagraph();
    // int locationIndex = Random.secure().nextInt(locationToResort.length);
    String locationKey = city;// locationToResort.keys.toList()[locationIndex];
    List<String> resortNames = locationToResort[locationKey];
    int resortNameIndex = Random.secure().nextInt(1);

    var retValue = new Resort();
    retValue._desciption = descriptionText;
    retValue._starLevel = (Random.secure().nextDouble() * _maxStarLevel).round().roundToDouble();
    retValue._costPerNight = (Random.secure().nextDouble() * _maxCostPerNight).round().roundToDouble();
    retValue._name = resortNames[resortNameIndex];
    retValue._city = locationKey;
    return retValue;
  }

  static Resort generateResortByName(String name, String city) {
    String descriptionText = lipsum.createParagraph();
    var retValue = new Resort();
    retValue._desciption = descriptionText;
    retValue._starLevel = Random.secure().nextDouble() * _maxStarLevel;
    retValue._costPerNight = (Random.secure().nextDouble() * _maxCostPerNight).roundToDouble();
    retValue._name = name;
    retValue._city = city;
    return retValue;
  }

  static List<Resort> generateRandomResorts(String city) {
    List<Resort> retValue = new List<Resort>();
    List<String> resortNames = locationToResort[city];
    for(int i=0; i< resortNames.length; i++) {
      String name = resortNames[i];
      Resort resort = generateResortByName(name, city);
      retValue.add(resort);
    }

    return retValue;
  }
}