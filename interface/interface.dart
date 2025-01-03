// interfsce is a syntax that class must follow.
// interface is a contract that class must follow.
//simple class which define method and then sub class implement extend and then wwe override this and concreate impementation of this method.

void main() {
  MacBook macbook = MacBook();
  macbook.turnOn();
  macbook.turnoff();
}

// INTERFACE CONCRETE CLASS
class Laptop {
  void turnOn() {
    print('Laptop is turning on');
  }

  void turnoff() {
    print('Laptop is turning off');
  }
}

class MacBook implements Laptop {
  @override
  void turnOn() {
    print('mc is turning on');
  }

  @override
  void turnoff() {
    print('mc is turning off');
  }
}
