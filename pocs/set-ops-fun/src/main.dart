void main() {
  var frontend = {'Alice', 'Bob', 'Charlie', 'Diana'};
  var backend = {'Charlie', 'Diana', 'Eve', 'Frank'};
  print('Frontend: $frontend');
  print('Backend: $backend');

  print('Union: ${frontend.union(backend)}');
  print('Intersection: ${frontend.intersection(backend)}');
  print('Frontend only: ${frontend.difference(backend)}');
  print('Backend only: ${backend.difference(frontend)}');

  print('Contains Alice? ${frontend.contains('Alice')}');
  print('Frontend subset of union? ${frontend.containsAll(frontend.union(backend)) == false}');

  var numbers = {5, 3, 1, 4, 2, 3, 1};
  print('Deduped: $numbers');
  print('Sorted: ${numbers.toList()..sort()}');

  var mapped = numbers.map((n) => n * n).toSet();
  print('Squared: $mapped');
  print('Length: ${mapped.length}');
}
