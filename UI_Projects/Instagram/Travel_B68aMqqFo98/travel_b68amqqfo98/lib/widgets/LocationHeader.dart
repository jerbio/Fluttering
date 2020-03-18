
import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/City.dart';

class LocationHeaderState extends State<LocationHeader> {
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


class LocationHeader extends StatefulWidget{
  final City city;
  LocationHeader({this.city});
  @override
  LocationHeaderState createState() => LocationHeaderState();
}