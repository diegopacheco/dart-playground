class Pair<A, B> {
  final A first;
  final B second;
  Pair(this.first, this.second);
  @override
  String toString() => '($first, $second)';
}

class Stack<T> {
  final List<T> _items = [];
  void push(T item) => _items.add(item);
  T pop() => _items.removeLast();
  T get peek => _items.last;
  @override
  String toString() => _items.toString();
}

T findMax<T extends Comparable<T>>(List<T> items) {
  return items.skip(1).fold(items.first, (max, item) => item.compareTo(max) > 0 ? item : max);
}

void main() {
  print('Pair: ${Pair<String, int>('age', 30)}');
  var stack = Stack<int>()..push(10)..push(20)..push(30);
  print('Stack: $stack, Pop: ${stack.pop()}, Peek: ${stack.peek}');
  print('Max int: ${findMax([3, 7, 1, 9, 4])}');
  print('Max str: ${findMax(['banana', 'apple', 'cherry'])}');
}
