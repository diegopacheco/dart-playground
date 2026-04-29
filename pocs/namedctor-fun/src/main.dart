class Color {
  final int r, g, b;
  Color(this.r, this.g, this.b);
  Color.red() : r = 255, g = 0, b = 0;
  Color.green() : r = 0, g = 255, b = 0;
  Color.blue() : r = 0, g = 0, b = 255;
  Color.fromHex(String hex)
      : r = int.parse(hex.substring(1, 3), radix: 16),
        g = int.parse(hex.substring(3, 5), radix: 16),
        b = int.parse(hex.substring(5, 7), radix: 16);
  Color.gray(int v) : r = v, g = v, b = v;
  String get hex => '#${r.toRadixString(16).padLeft(2, '0')}'
      '${g.toRadixString(16).padLeft(2, '0')}'
      '${b.toRadixString(16).padLeft(2, '0')}';
  @override
  String toString() => 'Color($r, $g, $b) $hex';
}

void main() {
  print(Color(128, 64, 32));
  print(Color.red());
  print(Color.green());
  print(Color.blue());
  print(Color.fromHex('#FF8C00'));
  print(Color.gray(128));
}
