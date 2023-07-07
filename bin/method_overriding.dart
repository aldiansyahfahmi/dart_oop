// ini adalah parent class
class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is Manager ${this.name}');
  }
}

class VicePresident extends Manager {
  // ini adalah method ovveriding
  // method overriding mendeklarasikan ulang method yang ada pada parent class
  @override
  void sayHello(String name) {
    print('Hello $name, my name is VP ${this.name}');
  }
}

void main() {
  var manager = Manager();
  manager.name = 'Aldi';
  manager.sayHello('Budi');

  var vp = VicePresident();
  vp.name = 'Angga';
  vp.sayHello('Budi');
}
