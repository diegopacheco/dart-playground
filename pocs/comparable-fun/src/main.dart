class Temperature implements Comparable<Temperature> {
  final double celsius;
  Temperature(this.celsius);
  double get fahrenheit => celsius * 9 / 5 + 32;
  @override
  int compareTo(Temperature other) => celsius.compareTo(other.celsius);
  @override
  String toString() => '${celsius.toStringAsFixed(1)}°C';
}

void main() {
  var temps = [
    Temperature(100), Temperature(0),
    Temperature(37), Temperature(-40), Temperature(22.5),
  ];
  print('Original: $temps');
  temps.sort();
  print('Sorted: $temps');
  print('Coldest: ${temps.first}');
  print('Hottest: ${temps.last}');

  var boiling = Temperature(100);
  var freezing = Temperature(0);
  print('Boiling > Freezing? ${boiling.compareTo(freezing) > 0}');
  print('Boiling in F: ${boiling.fahrenheit}');
}
