class Config {
  static const maxRetries = 3;
  static const timeout = Duration(seconds: 30);
  final String name;
  final DateTime createdAt;
  Config(this.name) : createdAt = DateTime.now();
  @override
  String toString() => 'Config($name, created=$createdAt)';
}

void main() {
  const pi = 3.14159;
  const greeting = 'Hello';
  const list = [1, 2, 3];
  print('const pi=$pi, greeting=$greeting, list=$list');

  final now = DateTime.now();
  final items = [10, 20, 30];
  items.add(40);
  print('final now=$now, items=$items');

  print('Max retries: ${Config.maxRetries}');
  print('Timeout: ${Config.timeout}');

  var c1 = Config('app-1');
  var c2 = Config('app-2');
  print(c1);
  print(c2);

  const map = {'a': 1, 'b': 2};
  print('const map: $map');
}
