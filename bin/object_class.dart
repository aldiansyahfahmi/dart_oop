class Person {}

void main() {
  int number = 100;
  // object class adalah super parent dari semua object/class
  // toString() adalah method dari object class
  print(number.toString());

  var person = Person();
  print(person.toString());
}
