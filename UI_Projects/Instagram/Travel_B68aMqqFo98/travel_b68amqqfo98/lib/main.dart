// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(VacationApp());

class VacationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
          child: Text('Hello World'),
        ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[900],
              // width: 48.0,
              height: 48.0,
              child: Text('Bali- Header'),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.green[900],
              // width: 48.0,
              height: 48.0,
              child: Text('Pictures Below'),
            )
          ],
            
          ),
      ),
    );
  }
}

// class PageContainer extends StatefulWidget {
//   @override
  
// }