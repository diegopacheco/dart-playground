class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;
  Database._internal();
  String _connection = 'disconnected';
  void connect(String url) => _connection = 'connected to $url';
  String get status => _connection;
  @override
  String toString() => 'Database($status)';
}

class AppConfig {
  static AppConfig? _instance;
  final Map<String, String> _props = {};
  AppConfig._();
  static AppConfig get instance => _instance ??= AppConfig._();
  void set(String key, String value) => _props[key] = value;
  String? get(String key) => _props[key];
  @override
  String toString() => 'AppConfig($_props)';
}

void main() {
  var db1 = Database();
  var db2 = Database();
  db1.connect('postgres://localhost:5432');
  print('db1: $db1');
  print('db2: $db2');
  print('Same instance? ${identical(db1, db2)}');

  AppConfig.instance.set('env', 'production');
  AppConfig.instance.set('port', '8080');
  print(AppConfig.instance);
  print('Same? ${identical(AppConfig.instance, AppConfig.instance)}');
}
