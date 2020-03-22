
class Filter {
  String _filterType= "DEFAULT";
  String _name;

  Filter() {

  }

  String get filterType {
    return _filterType;
  }

  set filterType(val) {
    _filterType = val;
  }

  set name(val) {
    _name = val;
  }

  String get name {
    return _name;
  }
}