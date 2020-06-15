import 'package:flutter/cupertino.dart';
import 'package:travel_b68amqqfo98/classes/Filter.dart';
import 'package:flutter/material.dart';
class FilterWidgetState extends State<FilterWidget> {
  
  @override
  Widget build(BuildContext context) {
    Icon filterIcon = Icon(Icons.location_on);
    if (widget.filter.filterType == "Date") {
      filterIcon = Icon(Icons.date_range);
    }

    return Row(
      children: <Widget>[
        filterIcon,
        Text(widget.filter.name),
        Icon(Icons.close)
      ],
    );
  }
}

class FilterWidget extends StatefulWidget {
  final Filter filter;
  FilterWidget({this.filter});
  @override
  FilterWidgetState createState() => FilterWidgetState();
}