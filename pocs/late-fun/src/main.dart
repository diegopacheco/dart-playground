class Config {
  late final String host;
  late final int port;
  late String _dbUrl;
  void init(String h, int p) {
    host = h; port = p;
    _dbUrl = 'postgres://$h:$p/mydb';
  }
  String get dbUrl => _dbUrl;
}

class HeavyResource {
  late final List<int> data = _loadData();
  List<int> _loadData() {
    print('Loading data...');
    return List.generate(10, (i) => i * i);
  }
}

void main() {
  var config = Config()..init('localhost', 5432);
  print('Host: ${config.host}');
  print('Port: ${config.port}');
  print('DB URL: ${config.dbUrl}');
  var resource = HeavyResource();
  print('Before access - data not loaded yet');
  print('Data: ${resource.data}');
  print('Cached: ${resource.data}');
}
