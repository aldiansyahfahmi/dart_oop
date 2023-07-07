// ini adalah interface
// interface dapat berupa class biasa atau dapat menggunakan abstract
class Car {
  String name = '';

  void drive() {}

  int getTier() {
    return 0;
  }
}

// sebaiknya pembuatan interface menggunakan abstract class
abstract class HasBrand {
  String getBrand();
}

// penggunaan interface bisa menggunakan keyword implements dan di ikuti nama interface nya
// semua yang ada pada interface wajib dideklarasikan ulang pada class child
// kita bisa melakukan multiple interface inheritance dengan menggunakan tanda , (koma) sebagai pemisah
class Avanza implements Car, HasBrand {
  @override
  String name = 'Avanza';

  @override
  String getBrand() {
    return 'Toyota';
  }

  @override
  void drive() {
    print('Avanza is running');
  }

  @override
  int getTier() {
    return 4;
  }
}
