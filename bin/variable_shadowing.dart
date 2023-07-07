class Person {
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  // ini adalah variable shadowing (nama variable yang sama)
  // data pada field name tidak akan berubah, karena nama variable yang ada pada parameter Person (name) sama dengan nama field (name)
  Person(String name, String address) {
    // name hanya mengakses yang ada di parameter diatas, tidak dapat mengakses pada nama field
    // karena penamaan yang sama
    name = name;
    address = address;
  }
}

void main() {
  var person = Person('Aldiansyah', 'Maros');
  print(person.name);
  print(person.address);
}
