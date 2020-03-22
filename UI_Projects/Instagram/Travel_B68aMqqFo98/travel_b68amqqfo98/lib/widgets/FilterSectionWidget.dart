import 'package:flutter/cupertino.dart';
import 'package:travel_b68amqqfo98/classes/Filter.dart';
import 'package:travel_b68amqqfo98/widgets/FilterWidget.dart';

class FilterSectionWidgetState extends State<FilterSectionWidget> {
  final List<Filter> filters = new List<Filter>();

  @override
  Widget build(BuildContext context) {
    List<FilterWidget> filterWidgets = filters.map((filter) => new FilterWidget(filter: filter)).toList();
    return Row(
      children: filterWidgets
    );
  }
}

class FilterSectionWidget extends StatefulWidget {
  FilterSectionWidget();
  @override
  FilterSectionWidgetState createState() => FilterSectionWidgetState();
}