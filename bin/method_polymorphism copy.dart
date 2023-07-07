// ignore_for_file: file_names

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

// ini adalah method polymorphism
void sayHello(Employee employee) {
  print('Hello ${employee.name}');
}

void main() {
  // tipe data dapat diubah (parameter)
  // dengan catatan dia harus satu inheritanse / turunan
  sayHello(Employee('Aldi'));
  sayHello(Manager('Aldi'));
  sayHello(VicePrecident('Aldi'));
}
