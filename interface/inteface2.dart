// how to create interface through abtract class

void main() {
  Dog dog = Dog();
  List<Animal> name = [Dog(), Cat()]; //polymorphism

  dog.sound();
}

abstract class Animal {
  // abtract method
  // if they are abtract method so we can use it defitly in the child class.
  void sound();

//non abtract method
  void eat() {
    print('Animal is eating');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    super.eat();
    print('Dog is barking');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat is meowing');
  }
}
