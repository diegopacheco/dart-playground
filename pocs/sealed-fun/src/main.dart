sealed class Vehicle {}

class Car extends Vehicle {}

class Truck implements Vehicle {}

class Bicycle extends Vehicle {}

String getVehicleSound(Vehicle vehicle) {
  return switch (vehicle) {
    Car() => 'vroom',
    Truck() => 'VROOOOMM',
    Bicycle() => 'Bi bi',
  };
}

void main() {
  // ERROR: Cannot be instantiated
  //Vehicle myVehicle = Vehicle();

  // Subclasses can be instantiated
  Vehicle myCar = Car();
  print(myCar);

}
