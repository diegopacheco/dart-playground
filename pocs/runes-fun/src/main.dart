void main() {
  var emoji = 'Hello 🌍🚀';
  print('String: $emoji');
  print('Length (code units): ${emoji.length}');
  print('Runes count: ${emoji.runes.length}');

  print('Runes: ${emoji.runes.toList()}');
  print('Code units: ${emoji.codeUnits.toList()}');

  var rocket = String.fromCharCode(0x1F680);
  print('From char code: $rocket');

  var text = 'Dart';
  var runes = text.runes.toList();
  var reversed = String.fromCharCodes(runes.reversed);
  print('Reversed "$text" = "$reversed"');

  var mixed = 'cafe\u0301';
  print('Mixed: $mixed (length=${mixed.length}, runes=${mixed.runes.length})');

  var chars = 'ABC'.runes.map((r) => String.fromCharCode(r + 1)).join();
  print('Caesar shift ABC -> $chars');
}
