typedef IntTransform = int Function(int);
typedef StringMapper = String Function(String);
typedef Predicate<T> = bool Function(T);

int applyTwice(IntTransform fn, int value) {
  return fn(fn(value));
}

List<T> filterList<T>(List<T> items, Predicate<T> test) {
  return items.where(test).toList();
}

void main() {
  IntTransform doubleIt = (x) => x * 2;
  print('Apply twice (3): ${applyTwice(doubleIt, 3)}');

  IntTransform addTen = (x) => x + 10;
  print('Apply twice (5): ${applyTwice(addTen, 5)}');

  StringMapper shout = (s) => s.toUpperCase();
  print('Shout: ${shout('hello world')}');

  Predicate<int> isEven = (n) => n % 2 == 0;
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Evens: ${filterList(numbers, isEven)}');

  Predicate<String> isLong = (s) => s.length > 4;
  var words = ['hi', 'hello', 'hey', 'greetings', 'yo'];
  print('Long words: ${filterList(words, isLong)}');
}
