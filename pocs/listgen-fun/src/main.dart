void main() {
  var generated = List.generate(10, (i) => i * i);
  print('Generated squares: $generated');

  var filled = List.filled(5, 'dart');
  print('Filled: $filled');

  var fromIterable = List.of({3, 1, 4, 1, 5, 9});
  print('From set: $fromIterable');

  var unmodifiable = List.unmodifiable([10, 20, 30]);
  print('Unmodifiable: $unmodifiable');

  var matrix = List.generate(3, (r) => List.generate(3, (c) => r * 3 + c + 1));
  for (var row in matrix) {
    print('Row: $row');
  }

  var fibonacci = List.generate(10, (i) {
    if (i <= 1) return i;
    return 0;
  });
  for (var i = 2; i < 10; i++) {
    fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
  }
  print('Fibonacci: $fibonacci');

  var reversed = List.of(generated.reversed);
  print('Reversed squares: $reversed');
}
