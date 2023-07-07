// ini adalah enum
enum CustomerLevel { regular, premium, vip }

class Customer {
  String name;
  CustomerLevel customerLevel;

  Customer(this.name, this.customerLevel);
}

void main() {
  var customer = Customer('Aldi', CustomerLevel.vip);
  print(customer.name);
  print(customer.customerLevel);

  print(CustomerLevel.values);
}
