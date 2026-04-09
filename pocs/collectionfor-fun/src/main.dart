void main() {
  var squares = [for (var i = 1; i <= 5; i++) i * i];
  print('Squares: $squares');

  var evens = [for (var i = 0; i < 20; i++) if (i % 2 == 0) i];
  print('Evens: $evens');

  var grid = [for (var r = 0; r < 3; r++) [for (var c = 0; c < 3; c++) r * 3 + c]];
  print('Grid: $grid');

  var tags = ['dart', 'flutter', 'go'];
  var upper = {for (var t in tags) t: t.toUpperCase()};
  print('Upper map: $upper');

  var fizzbuzz = [
    for (var i = 1; i <= 15; i++)
      if (i % 15 == 0) 'FizzBuzz'
      else if (i % 3 == 0) 'Fizz'
      else if (i % 5 == 0) 'Buzz'
      else '$i'
  ];
  print('FizzBuzz: $fizzbuzz');

  var uniqueSet = {for (var i in [1, 2, 2, 3, 3, 3]) i};
  print('Unique: $uniqueSet');

  var matrix = {for (var i = 0; i < 3; i++) for (var j = 0; j < 3; j++) '($i,$j)': i + j};
  print('Matrix: $matrix');
}
