class Application {
  // ini adalah static field
  static final String title = 'Belajar Dart OOP';
  static final String name = 'Aldi';
}

class Math {
  // ini adalah static method;
  static int sum(int first, int second) => first + second;
}

void main() {
  // cara akses ke static field
  // langsung memanggil class nya kemudian diikuti nama field nya
  // jadi tidak lagi membuat object class terlebih dahulu
  print(Application.title);
  print(Application.name);

  print(Math.sum(10, 15));
}
