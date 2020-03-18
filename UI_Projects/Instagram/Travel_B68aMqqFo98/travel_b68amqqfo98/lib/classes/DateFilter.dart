import 'package:travel_b68amqqfo98/classes/Filter.dart';

class DateFilter extends Filter {
  DateTime _start;
  DateTime _end;

  DateFilter() {
    this.filterType = "Date";
  }

  String get name {
    return _start.month.toString() + "-" + _start.day.toString();
  }
}