abstract class Animal {
  String? name;

  // ini adalah abstact method
  // abstract method tidak memilik body;
  void run();
}

class Cat extends Animal {
  // harus memanggil method dari abstract class
  // turunan dari abstract class wajib mengimplementasi method nya
  @override
  void run() {
    print('Cat $name is running');
  }
}

void main() {
  var cat = Cat();
  cat.name = 'Puss';
  cat.run();
}
