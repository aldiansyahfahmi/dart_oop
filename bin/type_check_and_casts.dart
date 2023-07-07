// ignore_for_file: unnecessary_cast, unused_local_variable

class Employee {
  String name;
  Employee(this.name);
}

class Manager extends Employee {
  Manager(String name) : super(name);
}

class VicePrecident extends Manager {
  VicePrecident(String name) : super(name);
}

// is untuk pengecekan
// as untuk mengkonversi
void sayHello(Employee employee) {
  if (employee is VicePrecident) {
    VicePrecident vp = employee as VicePrecident;
    print('Hello VP ${employee.name}');
  } else if (employee is Manager) {
    Manager manager = employee as Manager;
    print('Hello Manager ${employee.name}');
  } else {
    print('Hello ${employee.name}');
  }
}

void main() {
  sayHello(Employee('Aldi'));
  sayHello(Manager('Aldi'));
  sayHello(VicePrecident('Aldi'));
}
