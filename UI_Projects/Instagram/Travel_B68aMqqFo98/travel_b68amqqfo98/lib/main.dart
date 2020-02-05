// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';
import 'widgets/LocationWidget.dart';

void main() => runApp(VacationApp());

class VacationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Row(
          children:<Widget>[ 
            IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'Menu',
              onPressed: () {
                
              },
            ),
            IconButton(
              icon: Icon(Icons.search), 
              tooltip: 'Search',
              onPressed: () {

              },
            )
          ],
        ),
        ),
        body: LocationWidget()
        // Column(
        //   children: <Widget>[
        //     LocationWidget(),
        //     // Container(
        //     //   margin: const EdgeInsets.all(10.0),
        //     //   color: Colors.green[900],
        //     //   // width: 48.0,
        //     //   height: 48.0,
        //     //   child: Text('Pictures Below'),
        //     // )
        //   ],
            
        //   ),
      ),
    );
  }
}