void main() {
  Car car = Car();
  car.start();
  car.stopped();

  Bike bike = Bike();
  bike.start();
  bike.stopped();
}

abstract class Vehicle {
  void start();
  void stopped();
}

class Car extends Vehicle {
  @override
  void start() {
    print('engine started');
  }

  @override
  void stopped() {
    print('engine stopped');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('engine started');
  }

  @override
  void stopped() {
    print('engine stopped');
  }
}
