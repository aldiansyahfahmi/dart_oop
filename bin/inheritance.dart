// ini adalah parent class
class Manager {
  String? name;

  void sayHello(String name) {
    print('Hello $name, my name is ${this.name}');
  }
}

// inheritance adalah class turunan
// ini adalah child class
class VicePresident extends Manager {}

void main() {
  var manager = Manager();
  manager.name = 'Aldi';
  manager.sayHello('Budi');

  var vp = VicePresident();
  vp.name = 'Angga';
  vp.sayHello('Budi');
}
