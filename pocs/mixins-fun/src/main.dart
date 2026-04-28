mixin Swimmer {
  void swim() => print('$runtimeType is swimming');
}

mixin Flyer {
  void fly() => print('$runtimeType is flying');
}

mixin Runner {
  void run() => print('$runtimeType is running');
}

class Duck with Swimmer, Flyer, Runner {}
class Fish with Swimmer {}
class Eagle with Flyer, Runner {}

void main() {
  var duck = Duck();
  duck.swim();
  duck.fly();
  duck.run();
  Fish().swim();
  var eagle = Eagle();
  eagle.fly();
  eagle.run();
}
