String greet(String name, {String greeting = 'Hello', String suffix = '!'}) {
  return '$greeting, $name$suffix';
}

int sumAll(int a, [int b = 0, int c = 0, int d = 0]) {
  return a + b + c + d;
}

String repeat(String text, {required int times}) {
  return List.filled(times, text).join(' ');
}

({String full, String initials}) parseName(String first, String last) {
  return (full: '$first $last', initials: '${first[0]}${last[0]}');
}

void main() {
  print(greet('Diego'));
  print(greet('Diego', greeting: 'Hi'));
  print(greet('Diego', greeting: 'Hey', suffix: '?'));
  print('Sum: ${sumAll(1)}');
  print('Sum: ${sumAll(1, 2)}');
  print('Sum: ${sumAll(1, 2, 3, 4)}');
  print(repeat('dart', times: 3));
  var name = parseName('Diego', 'Pacheco');
  print('Full: ${name.full}, Initials: ${name.initials}');
}
