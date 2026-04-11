import 'dart:convert';

void main() {
  var intVal = int.parse('42');
  var doubleVal = double.parse('3.14');
  print('Parsed int: $intVal, double: $doubleVal');
  print('TryParse "abc": ${int.tryParse('abc')}');

  var hex = intVal.toRadixString(16);
  var bin = intVal.toRadixString(2);
  print('42 hex: $hex, binary: $bin');
  print('Back from hex: ${int.parse(hex, radix: 16)}');

  var encoded = base64Encode(utf8.encode('Hello Dart'));
  print('Base64: $encoded');
  print('Decoded: ${utf8.decode(base64Decode(encoded))}');

  var uri = Uri.encodeComponent('hello world & goodbye');
  print('URI encoded: $uri');
  print('URI decoded: ${Uri.decodeComponent(uri)}');

  print('255 hex: 0x${255.toRadixString(16).toUpperCase()}');
  print('255 octal: ${255.toRadixString(8)}');

  var boolVal = 'true'.toLowerCase() == 'true';
  print('Parsed bool: $boolVal');
  print('Char codes: ${String.fromCharCodes([72, 101, 108, 108, 111])}');
}
