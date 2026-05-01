class Vec2 {
  final double x, y;
  Vec2(this.x, this.y);
  Vec2 operator +(Vec2 o) => Vec2(x + o.x, y + o.y);
  Vec2 operator -(Vec2 o) => Vec2(x - o.x, y - o.y);
  Vec2 operator *(double s) => Vec2(x * s, y * s);
  bool operator >(Vec2 o) => magnitude > o.magnitude;
  double operator [](int i) => i == 0 ? x : y;
  double get magnitude => (x * x + y * y);
  @override
  String toString() => 'Vec2($x, $y)';
}

void main() {
  var a = Vec2(3, 4);
  var b = Vec2(1, 2);
  print('a = $a, b = $b');
  print('a + b = ${a + b}');
  print('a - b = ${a - b}');
  print('a * 2 = ${a * 2}');
  print('a > b? ${a > b}');
  print('a[0]=${a[0]}, a[1]=${a[1]}');
  print('magnitude a=${a.magnitude}, b=${b.magnitude}');
}
