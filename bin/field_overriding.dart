// ignore_for_file: overridden_fields

class Person {
  String name = 'Person';

  void sayHello(String name) {
    print('Hi $name, my name name is ${this.name}');
  }
}

class OtherPerson extends Person {
  @override
  String name = 'Other Person';
}

void main() {
  var person = Person();
  person.sayHello('Aldi');

  var otherPerson = OtherPerson();
  otherPerson.sayHello('Aldi');
}
