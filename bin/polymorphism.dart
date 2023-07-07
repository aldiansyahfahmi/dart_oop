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

void main() {
  Employee employee = Employee('Aldi');
  print(employee);

  // ini adalah polymorphism
  // dapat merubah bentuk objek selama menjadi turunan dari class nya (inheritance / pewaris)
  // suatau objek bisa berubah bentuk selama dia dalam satu inheritanse atau pewaris
  employee = Manager('Aldi');
  print(employee);

  employee = VicePrecident('Aldi');
  print(employee);
}
