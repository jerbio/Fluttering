import 'package:flutter/cupertino.dart';
import 'package:travel_b68amqqfo98/classes/Filter.dart';
import 'package:travel_b68amqqfo98/widgets/FilterWidget.dart';

import '../classes/Filter.dart';
import '../classes/DateFilter.dart';
// import '../classes/*';

class FilterSectionWidgetState extends State<FilterSectionWidget> {
  
  final List<Filter> filters = new List<Filter>();


  FilterSectionWidgetState() {
    DateFilter dateFilter = new DateFilter();
    dateFilter.start = new DateTime(2020, 1, 1);
    dateFilter.end = new DateTime(2020, 2, 1);
    Filter cityFilter = new Filter();
    cityFilter.name="Ubud";
    filters.add(dateFilter);
    filters.add(cityFilter);
  }
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