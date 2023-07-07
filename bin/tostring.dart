class Product {
  String? id;
  String? name;

  // toString merupakan method dari Object class (super parent)
  // method dibawah ini mengubah hasil return toString menjadi format string yang lain
  @override
  String toString() {
    return 'Product {id=$id, name=$name}';
  }
}

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Laptop';
  print(product.toString());
  // ketika memanggil product saja, itu sama dengan memanggil product.toString()
  print(product);
}
