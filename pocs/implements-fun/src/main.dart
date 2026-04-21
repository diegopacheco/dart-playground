class Logger {
  void log(String msg) => print('[LOG] $msg');
  String get prefix => 'Logger';
}

class JsonLogger implements Logger {
  @override
  void log(String msg) => print('{"level":"info","msg":"$msg"}');
  @override
  String get prefix => 'JsonLogger';
}

class ConsoleLogger implements Logger {
  @override
  void log(String msg) => print('>>> $msg');
  @override
  String get prefix => 'ConsoleLogger';
}

class MultiLogger implements Logger {
  final List<Logger> loggers;
  MultiLogger(this.loggers);
  @override
  void log(String msg) => loggers.forEach((l) => l.log(msg));
  @override
  String get prefix => 'MultiLogger';
}

void main() {
  List<Logger> loggers = [Logger(), JsonLogger(), ConsoleLogger()];
  for (var logger in loggers) {
    print('--- ${logger.prefix} ---');
    logger.log('server started on port 8080');
  }

  var multi = MultiLogger([JsonLogger(), ConsoleLogger()]);
  print('--- ${multi.prefix} ---');
  multi.log('multi message');
}
