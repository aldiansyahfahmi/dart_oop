class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  // ini adalah constructor
  Person(String paramName, paramAddress) {
    name = paramName;
    address = paramAddress;
  }
}

void main() {
  var person = Person('Aldiansyah', 'Maros');
  print(person.name);
  print(person.address);
}
