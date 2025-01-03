// mixin is a phenomenon in Dart that allows a class to inherit from multiple classes.

void main() {
  Person peroson = Person('zaki@gmail', 'password');
  peroson.displayInfo();
}

class Person with Logger, Validation {
  String email, password;

  Person(this.email, this.password);

  void displayInfo() {
    if (ValidatePassword(password) == null) {
      log('Email: $email, Password: $password');
    } else {
      log(ValidatePassword(password) ?? 'Invalid password');
    }
    print('Email: $email, Password: $password');
  }
}

mixin Logger {
  void log(String message) {
    print(message);
  }
}

mixin Validation {
  String? ValidatePassword(String password) {
    if (password.isEmpty) {
      return 'Password cannot too short';
    }
    return null;
  }
}
