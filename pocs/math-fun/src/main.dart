import 'dart:math';

void main() {
  print('PI: $pi, E: $e');
  print('sqrt(144): ${sqrt(144)}');
  print('pow(2, 10): ${pow(2, 10)}');
  print('log(e): ${log(e)}');
  print('sin(pi/2): ${sin(pi / 2)}');
  print('cos(0): ${cos(0)}');
  print('min(3, 7): ${min(3, 7)}');
  print('max(3, 7): ${max(3, 7)}');

  var rng = Random(42);
  var randoms = List.generate(5, (_) => rng.nextInt(100));
  print('Randoms: $randoms');
  print('Random double: ${rng.nextDouble().toStringAsFixed(4)}');
  print('Random bool: ${rng.nextBool()}');

  var nums = [15, 3, 42, 7, 28, 1, 99];
  nums.sort();
  print('Sorted: $nums');
  print('Min: ${nums.first}, Max: ${nums.last}');

  var hyp = sqrt(pow(3, 2) + pow(4, 2));
  print('Hypotenuse(3,4): $hyp');
  print('2.7 ceil: ${2.7.ceil()} floor: ${2.7.floor()} round: ${2.7.round()}');
}
