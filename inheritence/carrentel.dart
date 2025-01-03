void main() {
  Car car = Car('Toyota', 'Corolla', 2020, 2);
  car.displayInfo();

  print('Rental Price: ${car.culculatrentalprice(5)}');
}

class Vehicle {
  String brand;
  String model;
  int year;

  //constructor of vehicle class
  Vehicle(this.brand, this.year, this.model);

  void displayInfo() {
    print('Brand: $brand, Year: $year, Model: $model');
  }

  double culculatrentalprice(int days) {
    return days * 50;
  }
}

class Car extends Vehicle {
  int door;
  Car(
    String brand,
    String model,
    int year,
    this.door,
  ) : super(brand, year, model);

  @override
  double culculatrentalprice(int days) {
    return super.culculatrentalprice(days) + 20 * door;
  }
}
