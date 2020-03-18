// import 'dart:html';
// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';
import 'package:travel_b68amqqfo98/widgets/ResortPreview.dart';

class ResortWidgetState extends State<ResortWidget> {
  bool isSlidForward = false;
  ResortWidgetState();

  @override
  Widget build(BuildContext context) {
    Resort resort = widget.resort;
    double right = isSlidForward ? -65 : -100;
    return Container(
      height: 150,
      width: 50,
      color: Colors.red,
      margin: const EdgeInsets.symmetric(horizontal: 0.0),
      child: new Container(
            width: 100,
            decoration: new BoxDecoration(
              color: Colors.yellow,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              )
            ),
            child: Stack (
              children: [
                Container(
                  height: 150,
                ),
                Positioned(
                  left: 280,
                  height: 150,
                  child: Container(
                    width:65,
                    decoration: new BoxDecoration(
                      color: const Color.fromARGB(255, 48, 148, 110),
                      borderRadius: new BorderRadius.only(
                        topRight: const Radius.circular(25.0),
                        bottomRight: const Radius.circular(25.0),
                      )
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          child: Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.info_outline,
                            color: Colors.white,
                          ),
                        )
                    ])
                  ),
                ),
                AnimatedPositioned(
                  right: right,
                  duration: Duration(milliseconds: 100),
                  width: 410,
                  height: 150,
                  child: new Container(
                    decoration: new BoxDecoration(
                      // color: Colors.red,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(20.0),
                        topRight: const Radius.circular(20.0),
                        bottomLeft: const Radius.circular(20.0),
                        bottomRight: const Radius.circular(20.0),
                      )
                    ),
                    child: 
                    // Container(
                    //   color: Colors.transparent
                    // )
                    
                    InkWell(
                      child: new ResortPreview(resort),
                      onTap: () {
                        setState(() {
                          this.isSlidForward = !this.isSlidForward;
                        });
                        
                      }
                    )
                  )
                  
                ),
              ]
          )
      )
      
      );
  }
}


class ResortWidget extends StatefulWidget{
    final Resort resort;
    ResortWidget({this.resort});

    @override
    ResortWidgetState createState() => ResortWidgetState();
}


