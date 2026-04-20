class Point {
  final int x, y;
  Point(this.x, this.y);
  @override
  bool operator ==(Object other) =>
      other is Point && other.x == x && other.y == y;
  @override
  int get hashCode => Object.hash(x, y);
  @override
  String toString() => 'Point($x, $y)';
}

void main() {
  var p1 = Point(3, 4);
  var p2 = Point(3, 4);
  var p3 = Point(5, 6);
  print('p1 == p2: ${p1 == p2}');
  print('p1 == p3: ${p1 == p3}');
  print('identical: ${identical(p1, p2)}');
  print('hash p1=${p1.hashCode}, p2=${p2.hashCode}');
  print('hash match: ${p1.hashCode == p2.hashCode}');

  var set = {Point(1, 1), Point(2, 2), Point(1, 1)};
  print('Set: $set (size=${set.length})');

  var map = {Point(0, 0): 'origin', Point(1, 0): 'right'};
  print('Map lookup: ${map[Point(0, 0)]}');

  var points = [Point(3, 1), Point(1, 2), Point(2, 3)];
  points.sort((a, b) => a.x.compareTo(b.x));
  print('Sorted: $points');
}
