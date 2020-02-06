import 'package:flutter/cupertino.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';

class ResortWidget extends StatelessWidget {
  final Resort resort;

  ResortWidget({this.resort});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("${resort.name}")
    );
  }
}