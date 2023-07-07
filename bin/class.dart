// ini adalah Class
class Person {
  // ini adalah field
  String name = 'Guest';
  String? address;
  final String country = 'Indonesia';

  // ini adalah method
  void sayHello(String paramName) {
    print('Hello $paramName, my name is $name');
  }

  String getName() {
    return 'My name is $name';
  }
}

void main(List<String> arguments) {
  // ini adalah Object
  var person = Person();

  // mengubah dan menambah data
  person.name = 'Aldiansyah Fahmi';
  person.address = 'Maros, Lingk. Ballu-Ballu';
  // person.country = 'Singapore'; // tidak dapat diubah, karena menggunakan final

  // menampilkan data dari object
  print(person.name);
  print(person.address);
  print(person.country);

  // memanggil method/function dari object
  person.sayHello('Budi');
  print(person.getName());
}
