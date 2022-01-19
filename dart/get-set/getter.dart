class Car {
  String _name;
  final int _number;

  Car(this._name, this._number);

  // Getter
  String get name => _name;
  int get number => _number;

  // Setter
  set name(String n) {
    _name = n;
  }
}
