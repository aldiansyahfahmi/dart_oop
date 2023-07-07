class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  // ini adalah formal parameter
  Person(this.name, this.address);
}

void main() {
  var person = Person('Aldiansyah', 'Maros');
  print(person.name);
  print(person.address);
}
