Function makeCounter(int start) {
  var count = start;
  return () => ++count;
}

Function makeMultiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var counter = makeCounter(0);
  print('Count: ${counter()}');
  print('Count: ${counter()}');
  print('Count: ${counter()}');

  var triple = makeMultiplier(3);
  var quadruple = makeMultiplier(4);
  print('Triple 5: ${triple(5)}');
  print('Quadruple 5: ${quadruple(5)}');

  var fns = [for (var i = 0; i < 5; i++) () => i * i];
  for (var fn in fns) {
    print('Result: ${fn()}');
  }

  var items = ['banana', 'apple', 'cherry'];
  items.sort((a, b) => a.length.compareTo(b.length));
  print('By length: $items');
}
