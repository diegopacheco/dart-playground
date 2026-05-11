void main() {
  var sb = StringBuffer();
  sb.write('Hello');
  sb.write(' ');
  sb.writeln('World!');
  sb.writeln('Dart is awesome');
  print('Buffer:\n$sb');

  var table = StringBuffer();
  var headers = ['Name', 'Age', 'City'];
  var rows = [['Alice', '30', 'NYC'], ['Bob', '25', 'LA'], ['Charlie', '35', 'SF']];
  table.writeln(headers.map((h) => h.padRight(10)).join('|'));
  table.writeln('-' * 32);
  for (var row in rows) {
    table.writeln(row.map((c) => c.padRight(10)).join('|'));
  }
  print(table);

  var csv = StringBuffer();
  for (var row in rows) {
    csv.writeln(row.join(','));
  }
  print('CSV:\n$csv');
  print('Length: ${sb.length}');
  print('IsEmpty: ${StringBuffer().isEmpty}');
}
