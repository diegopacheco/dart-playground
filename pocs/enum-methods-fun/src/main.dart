enum Planet {
  mercury(3.7, 2440),
  venus(8.87, 6052),
  earth(9.8, 6371),
  mars(3.72, 3390);

  final double gravity;
  final int radiusKm;
  const Planet(this.gravity, this.radiusKm);

  double weightOn(double massKg) => massKg * gravity;
  bool get isInner => index < 4;
}

void main() {
  for (var p in Planet.values) {
    print('${p.name}: gravity=${p.gravity}, radius=${p.radiusKm}km, '
        '80kg=${p.weightOn(80).toStringAsFixed(1)}N');
  }
  print('Earth by name: ${Planet.values.byName('earth')}');
  print('All inner? ${Planet.values.every((p) => p.isInner)}');
  var biggest = Planet.values.reduce((a, b) => a.radiusKm > b.radiusKm ? a : b);
  print('Biggest: ${biggest.name}');
}
