import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';


class LocationContentState extends State<LocationContent> {
  Resort resort;

  LocationContentState({this.resort});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          return _buildRow(resort.locations[i]);
        }
      ),
    );
  }
}

Widget _buildRow(String locationImage) {
  return Text(locationImage);
}

class LocationContent extends StatefulWidget{
    final Resort resort;
    LocationContent({this.resort});

    @override
    LocationContentState createState() => LocationContentState();
}