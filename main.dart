// inhertence in dart.
// inhertence is a mechanism in which we can use the properties of one class in another class.
// in dart we can use the inhertence by using the extends keyword.
// parent class also called super class and child class also called sub class.
// child class also called derived class sub class child class.
// inheritince in a dart is a key feature of object oriented programming that allow a class known as sub class are derived class to inherit the properties and behavior from another class known as super class or parent class.
// This enables code reusability and is an important concept in object oriented programming.
// extends keyword is used to inherit the properties of a class.
// the class that inherits the properties of another class is known as sub class or derived class.
// the class whose properties are inherited is known as super class or parent class.
// the sub class can access all the public and protected methods and fields of the super class.
// the sub class can also override the methods of the super class.
// the sub class can also have its own methods and fields.

void main() {
  Student student = Student();
  student.name = 'John Doe';
  student.age = 30;
  student.displayInfo();
  student.sem = 5;
  student.regNumber = '123456';
  student.displaySchoolInfo();
}

// PARENT CLASS
class Person {
  String? name;
  int? age;

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

// CHILD CLASS
class Student extends Person {
  String? regNumber;
  int? sem;
  //method
  void displaySchoolInfo() {
    print('Reg Number: $regNumber, Semester: $sem');
  }
}
