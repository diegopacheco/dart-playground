void main() {
  var base = [1, 2, 3];
  var extended = [0, ...base, 4, 5];
  print('Spread list: $extended');

  var nullableList = null;
  var safe = [1, ...?nullableList, 2];
  print('Null-aware spread: $safe');

  var setA = {1, 2, 3};
  var setB = {3, 4, 5};
  var merged = {...setA, ...setB};
  print('Spread set: $merged');

  var defaults = {'theme': 'dark', 'lang': 'en'};
  var overrides = {'lang': 'pt', 'fontSize': '14'};
  var config = {...defaults, ...overrides};
  print('Spread map: $config');

  var nested = [[1, 2], [3, 4], [5, 6]];
  var flat = [for (var list in nested) ...list];
  print('Flatten: $flat');
}
