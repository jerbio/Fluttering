import 'dart:math';

import 'package:travel_b68amqqfo98/classes/Filter.dart';

class DateFilter extends Filter {
  DateTime _start;
  DateTime _end;

  DateFilter() {
    this.filterType = "Date";
  }

  set start(DateTime start) {
    this._start = start;
  }

  set end(DateTime end) {
    this._end = end;
  }

  String get name {
    return _start.month.toString() + " " + _start.day.toString() + " - " + _end.month.toString() + " " + _end.day.toString();
  }

  static DateFilter generateRandomDateFilter() {
    DateFilter filter = new DateFilter();
    DateTime start = DateTime.now();
    int dayCount = Random.secure().nextInt(5);
    start.add(new Duration(days: dayCount));
    
    int dayDiff = Random.secure().nextInt(14);
    DateTime end = start;
    end.add(new Duration(days: dayDiff));
    filter.start = start;
    filter.end = end;
    return filter;
  }
}