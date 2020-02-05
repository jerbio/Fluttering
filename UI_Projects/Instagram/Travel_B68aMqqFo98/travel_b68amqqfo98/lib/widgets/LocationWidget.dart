import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';
import 'LocationHeader.dart';
import 'LocationContent.dart';

class LocationWidgetState extends State<LocationWidget> {
  final List<Resort> resorts = Resort.generateRandomResorts(10);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _renderLocationResult(),
    );
  }

  Widget _renderLocationResult() {
    return Column(children: <Widget>[
      LocationHeader(
        ),
      LocationContent(resort: new Resort()),
    ]);
  }
}

class LocationWidget extends StatefulWidget {
  @override
  LocationWidgetState createState() => LocationWidgetState();
}