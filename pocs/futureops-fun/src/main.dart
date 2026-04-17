Future<String> fetchUser() => Future.delayed(Duration(milliseconds: 50), () => 'Diego');
Future<int> fetchAge() => Future.delayed(Duration(milliseconds: 30), () => 30);
Future<String> fetchCity() => Future.delayed(Duration(milliseconds: 40), () => 'Curitiba');

void main() async {
  var results = await Future.wait([fetchUser(), fetchAge(), fetchCity()]);
  print('Wait all: $results');

  var fastest = await Future.any([
    Future.delayed(Duration(milliseconds: 100), () => 'slow'),
    Future.delayed(Duration(milliseconds: 10), () => 'fast'),
    Future.delayed(Duration(milliseconds: 50), () => 'medium'),
  ]);
  print('Fastest: $fastest');

  var value = await Future.value(42);
  print('Future.value: $value');

  var chained = await Future.value(10)
      .then((v) => v * 2)
      .then((v) => v + 5)
      .then((v) => 'Result: $v');
  print('Chained: $chained');

  var fallback = await Future<int>.error('oops').catchError((_) => -1);
  print('Fallback: $fallback');
}
