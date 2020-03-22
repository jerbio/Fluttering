
import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/City.dart';

class LocationHeaderWidgetState extends State<LocationHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 100.0,
      child: Column(children: <Widget>[
        Text('${widget.city.name}')
      ],)
    );
  }
}


class LocationHeaderWidget extends StatefulWidget {
  final City city;
  LocationHeaderWidget({this.city});
  @override
  LocationHeaderWidgetState createState() => LocationHeaderWidgetState();
}