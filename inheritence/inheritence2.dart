void main() {
  //object is an instance of a class.
  //object is a real world entity.
  //object is a runtime entity.
  //object is a basic unit of object oriented programming.
  //object is a physical entity.
  //object is a logical entity.
  //object is a entity that has state and behavior.
  //object is a entity that has attributes and methods.
  //object is a entity that has properties and actions.
  //object is a entity that has data and functions.
  //object is a entity that has variables and functions.
  //object is a entity that has fields and methods.
  //object is a entity that has instance variables and instance methods.
  //object is a entity that has instance fields and instance methods.
  //object is a entity that has instance variables and instance functions.
  //object is a entity that has instance properties and instance actions.
  //object is a entity that has instance data and instance functions.
  //object is a entity that has instance variables and instance functions.
  //object is a entity that has instance fields and instance methods.
  //object is a entity that has instance properties and instance actions.
  //object is a entity that has instance data and instance functions.
  //object is a entity that has instance variables and instance functions.
  //object is a entity that has instance fields and instance methods.
  //object is a entity that has instance properties and instance actions.
  //object is a entity that has instance data and instance functions.
  //object is a entity that has instance variables and instance functions.
  //object is a entity that has instance fields and instance methods.
  //object is a entity that has instance properties and instance actions.
  //object is a entity that has instance data and instance functions.
  Macbook macbook = Macbook('Apple', 2000, 'Macbook Pro 2020');
  macbook.displayInfo();
}

// PARENT CLASS
class Laptop {
  String brand;
  double price;

  // constructor
  //constructor is a special type of method that is used to initialize the object of the class.
  Laptop(this.brand, this.price) {
    print('Laptop call');
  }

  void displayInfo() {
    print('Brand: $brand, Price: $price');
  }
}

// CHILD CLASS
class Macbook extends Laptop {
  // if we pass vaule to child class.
  String model;
  Macbook(String brand, double price, this.model) : super(brand, price);

  void displayInfo() {
    super.displayInfo();
    print(' Model: $model');
  }
}
