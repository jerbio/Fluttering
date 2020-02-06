import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/City.dart';
import 'LocationHeader.dart';
import 'LocationContent.dart';

class LocationWidgetState extends State<LocationWidget> {
  final City city = new City();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _renderLocationResult(),
    );
  }

  Widget _renderLocationResult() {
    return Column(children: <Widget>[
      LocationHeader(
        city: city,
        ),
      LocationContent(city: this.city),
    ]);
  }
}

class LocationWidget extends StatefulWidget {
  @override
  LocationWidgetState createState() => LocationWidgetState();
}