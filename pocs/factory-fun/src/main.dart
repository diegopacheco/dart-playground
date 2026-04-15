class Logger {
  static final Map<String, Logger> _cache = {};
  final String name;
  int _count = 0;
  Logger._internal(this.name);
  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }
  void log(String msg) { _count++; print('[$name #$_count] $msg'); }
}

class Shape {
  final String type;
  final double area;
  Shape._(this.type, this.area);
  factory Shape.circle(double r) => Shape._('circle', 3.14159 * r * r);
  factory Shape.square(double s) => Shape._('square', s * s);
  @override
  String toString() => '$type(area=${area.toStringAsFixed(2)})';
}

void main() {
  var log1 = Logger('APP');
  var log2 = Logger('APP');
  print('Same instance? ${identical(log1, log2)}');
  log1.log('Starting');
  log2.log('Running');
  print(Shape.circle(5));
  print(Shape.square(4));
}
