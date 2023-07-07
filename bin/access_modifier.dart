class Product {
  String? id;
  String? name;
  // tanda _ (underscore) pada nama field berarti private
  int? _quantity;

  // tanda _ (underscore) juga bisa digunakan pada method
  int? _getQuantity() {
    return _quantity;
  }
}

void main() {
  var product = Product();
  product.id = '1';
  product.name = 'Aldi';
  // field/method yang menggunakan tanda _ (underscore) hanya bisa diakses pada file yang sama
  // field/method yang menggunakan tanda _ (underscore) tidak bisa diakses di file yang berbeda
  product._quantity = 100;
  product._getQuantity();
}
