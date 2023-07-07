class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(this.name, this.address);

  // ini adalah named constructor
  // kita dapat membuat constructor lain menggunakan named constructor
  Person.withName(this.name);

  Person.withAddress(this.address);
}

void main() {
  var person1 = Person('Aldiansyah', 'Maros');
  print(person1.name);
  print(person1.address);

  var person2 = Person.withName('Aldiansyah');
  print(person2.name);
  print(person2.address);

  var person3 = Person.withAddress('Maros');
  print(person3.name);
  print(person3.address);
}
