import 'dart:io';

void main() {
  print('OS: ${Platform.operatingSystem}');
  print('OS Version: ${Platform.operatingSystemVersion}');
  print('Dart version: ${Platform.version}');
  print('Hostname: ${Platform.localHostname}');
  print('Processors: ${Platform.numberOfProcessors}');
  print('Locale: ${Platform.localeName}');
  print('Executable: ${Platform.executable}');
  print('Script: ${Platform.script}');

  print('isMacOS: ${Platform.isMacOS}');
  print('isLinux: ${Platform.isLinux}');
  print('isWindows: ${Platform.isWindows}');

  var env = Platform.environment;
  print('HOME: ${env['HOME'] ?? env['USERPROFILE'] ?? 'N/A'}');
  print('PATH entries: ${env['PATH']?.split(':').length ?? 0}');

  print('PID: $pid');
}
