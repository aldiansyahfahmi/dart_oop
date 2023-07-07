class Apple {
  int quantity = 0;

  // ini adalah operator method
  Apple operator +(Apple other) {
    var result = Apple();
    result.quantity = quantity + other.quantity;
    return result;
  }
}

void main() {
  var apple1 = Apple();
  apple1.quantity = 10;

  var apple2 = Apple();
  apple2.quantity = 10;

  var apple3 = apple1 + apple2;
  print(apple3.quantity);
}
