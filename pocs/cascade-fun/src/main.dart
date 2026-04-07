class Builder {
  String _name = '';
  int _port = 0;
  bool _debug = false;
  List<String> _features = [];
  Builder setName(String n) { _name = n; return this; }
  Builder setPort(int p) { _port = p; return this; }
  Builder setDebug(bool d) { _debug = d; return this; }
  Builder addFeature(String f) { _features.add(f); return this; }
  @override
  String toString() => 'Config($_name, port=$_port, debug=$_debug, features=$_features)';
}

void main() {
  var config = Builder()
    ..setName('MyApp')
    ..setPort(8080)
    ..setDebug(true)
    ..addFeature('auth')
    ..addFeature('logging');
  print(config);

  var numbers = <int>[]
    ..add(1)
    ..addAll([2, 3, 4, 5]);
  print('Numbers: $numbers');
  print('Sum: ${numbers.reduce((a, b) => a + b)}');
}
