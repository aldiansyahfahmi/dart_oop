class Category {
  String? id;
  String? name;

  Category(this.id, this.name);

  // mengubah validasi dari operator == (equals operator)
  // operator == (equals operator) ini dari class Object (super parent class)
  @override
  bool operator ==(Object object) {
    if (object is Category) {
      if (id != object.id) {
        return false;
      } else if (name != object.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  // ketika mengovveride operator == (equals operator) maka harus mengoverride hascode juga
  // untuk menyamakan nilai hascode dari setiap object
  @override
  int get hashCode {
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}

void main() {
  var category1 = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');

  print(category1 == category1);
  print(category1 == category2);
  print(category1.hashCode);
  print(category2.hashCode);
}
