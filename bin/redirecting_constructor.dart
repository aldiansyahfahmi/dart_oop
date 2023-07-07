class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  Person(this.name, this.address);

  // ini adalah redirecting constructor (default constructor)
  Person.withName(String name) : this(name, 'No Address');

  Person.withAddress(String address) : this('No Name', address);

  // ini adalah redirecting named constructor
  Person.fromJakarta() : this.withAddress('Jakarta');
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

  var person4 = Person.fromJakarta();
  print(person4.name);
  print(person4.address);
}
