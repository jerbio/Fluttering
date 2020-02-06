import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_b68amqqfo98/classes/City.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';

import 'ResortWidget.dart';


class LocationContentState extends State<LocationContent> {
  LocationContentState();

  @override
  Widget build(BuildContext context) {
    City city = widget.city;
    return Container(
      height: 200,
      child: ListView.builder(
        itemCount: city.resorts.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return _buildRow(city.resorts[i]);
        }
      ),
    );
  }

  Widget _buildRow(Resort resort) {
    return ListTile(
        title: new ResortWidget(resort: resort,),
      );
  }
}



class LocationContent extends StatefulWidget{
    final City city;
    LocationContent({this.city});

    @override
    LocationContentState createState() => LocationContentState();
}