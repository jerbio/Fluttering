import 'package:flutter/cupertino.dart';
import 'package:travel_b68amqqfo98/classes/Resort.dart';

class ResortPreview extends StatelessWidget{
  final Resort resort;
  ResortPreview(this.resort);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(this.resort.imagePath,
        fit: BoxFit.cover,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 120.0),
          padding: const EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Text("${resort.name}"),
            Text("${resort.costPertNight}")
          ],
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
        ),)
      ]);
  }
}