
import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';

class LocationHeaderState extends State<LocationHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 100.0,
      child: Text('${widget.resort.name}')
    );
  }
}


class LocationHeader extends StatefulWidget{
  final Resort resort = Resort.generateRandom();
  // LocationHeader({this.resort});
  @override
  LocationHeaderState createState() => LocationHeaderState();
}