void main() {
  var scores = {'Alice': 95, 'Bob': 87, 'Charlie': 92, 'Diana': 78};
  print('Scores: $scores');

  scores['Eve'] = 88;
  scores.remove('Bob');
  print('Updated: $scores');

  print('Keys: ${scores.keys.toList()}');
  print('Values: ${scores.values.toList()}');
  print('Contains Alice? ${scores.containsKey('Alice')}');

  var passed = scores.entries.where((e) => e.value >= 90);
  print('Passed (>=90): ${passed.map((e) => e.key).toList()}');

  scores.forEach((name, score) {
    print('$name scored $score');
  });

  var mapped = scores.map((k, v) => MapEntry(k, v + 5));
  print('Curved: $mapped');

  var merged = {...scores, ...{'Frank': 91, 'Grace': 85}};
  print('Merged: $merged');

  scores.putIfAbsent('Alice', () => 100);
  scores.update('Charlie', (v) => v + 3);
  print('Final: $scores');
}
