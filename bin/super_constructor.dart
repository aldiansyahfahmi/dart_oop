class Manager {
  String? name;

  Manager(this.name);
}

class VicePresident extends Manager {
  // ini adalah super constructor
  // super constructor berguna untuk mengakses constructor dari parent class
  // super constructor harus digunakan didalam class child
  VicePresident(String name) : super(name) {
    print('Create new VicePrecident');
  }
}

void main() {
  var manager = Manager('Budi');
  print(manager.name);

  var vp = VicePresident('Aldi');
  print(vp.name);
}
