import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';
import 'LocationHeader.dart';
import 'LocationContent.dart';

class LocationWidgetState extends State<LocationWidget> {
  List<Resort> resorts = Resort.generateRandomResorts(10);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
      ),
      body: _renderLocationResult(),
    );
  }

  Widget _renderLocationResult() {
    return Column(children: <Widget>[
      LocationHeader(
        // resort: resorts[0]
        ),
      // LocationContent(resort: resorts[0]),
    ]);
  }
}

class LocationWidget extends StatefulWidget {
  @override
  LocationWidgetState createState() => LocationWidgetState();
}