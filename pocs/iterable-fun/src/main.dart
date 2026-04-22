void main() {
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var doubled = numbers.map((n) => n * 2).toList();
  print('Doubled: $doubled');

  var evens = numbers.where((n) => n % 2 == 0).toList();
  print('Evens: $evens');

  var sum = numbers.reduce((a, b) => a + b);
  print('Sum: $sum');

  var product = numbers.fold<int>(1, (acc, n) => acc * n);
  print('Product: $product');

  print('Any > 5? ${numbers.any((n) => n > 5)}');
  print('Every > 0? ${numbers.every((n) => n > 0)}');
  print('First even: ${numbers.firstWhere((n) => n % 2 == 0)}');

  var words = ['dart', 'is', 'great'];
  var sentence = words.join(' ');
  print('Sentence: $sentence');

  var flat = [[1, 2], [3, 4], [5, 6]].expand((x) => x).toList();
  print('Flat: $flat');

  var indexed = numbers.asMap().entries.map((e) => '${e.key}:${e.value}');
  print('Indexed: ${indexed.toList()}');
}
