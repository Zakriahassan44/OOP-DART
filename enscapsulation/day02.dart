import 'person.dart';

void main() {
  Person person = Person('John Doe', 30);
  person.displayInfo();
  person.setAge = 31;
  person.setName = 'Zakria Doe';
  print(person.name);
  print(person.age);
}

// specilized method in which we can use setter for updating the vaule and getter is use for acces the vaule in anothe class. 
// this whole process is called encapsulation.
//in this we can use the private variable and we can access the private variable by using the getter and setter method.
// we can create a peivate variavble and then we can create a specilaized method for updating the value and accessing the value.