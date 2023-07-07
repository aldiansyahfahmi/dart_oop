// ignore_for_file: prefer_initializing_formals

class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  // untuk mengatasi variable shadowing bisa menggunakan keyword this
  // this berguna untuk mengakses data dari class
  Person(String name, String address) {
    this.name = name;
    this.address = address;
  }
}

void main() {
  var person = Person('Aldiansyah', 'Maros');
  print(person.name);
  print(person.address);
}
