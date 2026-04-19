class Temperature {
  double _celsius;
  Temperature(this._celsius);
  double get celsius => _celsius;
  set celsius(double v) => _celsius = v;
  double get fahrenheit => _celsius * 9 / 5 + 32;
  set fahrenheit(double v) => _celsius = (v - 32) * 5 / 9;
  double get kelvin => _celsius + 273.15;
  set kelvin(double v) => _celsius = v - 273.15;
  @override
  String toString() => '${celsius.toStringAsFixed(1)}C / '
      '${fahrenheit.toStringAsFixed(1)}F / '
      '${kelvin.toStringAsFixed(1)}K';
}

void main() {
  var t = Temperature(100);
  print('Boiling: $t');

  t.fahrenheit = 32;
  print('Freezing: $t');

  t.kelvin = 0;
  print('Absolute zero: $t');

  t.celsius = 37;
  print('Body temp: $t');
}
