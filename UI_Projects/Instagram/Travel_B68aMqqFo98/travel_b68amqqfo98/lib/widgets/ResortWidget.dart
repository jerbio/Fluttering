import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';
import 'package:travel_b68amqqfo98/widgets/ResortPreview.dart';

class ResortWidgetState extends State<ResortWidget> {
  bool isSlidForward = Random.secure().nextBool();
  ResortWidgetState();

  @override
  Widget build(BuildContext context) {
    Resort resort = widget.resort;
    double left = isSlidForward ? -50 : 0;
    return Stack(
      children: [
        Container(
          height: 150,
          color: Colors.red,
        ),
        Positioned(
          left: 200,
          child: Column(
          children: <Widget>[
          Text("Location"),
          Text("Message"),
          Text("info")
        ]),),
        AnimatedPositioned(
          left: left,
          duration: Duration(milliseconds: 500),
          width: 350,
          child: new ResortPreview(resort),
        ),
      ]
    );
  }
}


class ResortWidget extends StatefulWidget{
    final Resort resort;
    ResortWidget({this.resort});

    @override
    ResortWidgetState createState() => ResortWidgetState();
}