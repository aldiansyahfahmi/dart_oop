import 'dart:mirrors';

// noSuchMethod juga bisa digunakan sebagai implementasi untuk interface

abstract class CategoryRepository {
  void id(String id);
  void name(String name);
}

// noSuchMethod menggunakan abstract class
// penggunaan abstract class berguna agar object nya tidak bebas menambahkan method (dibatasi)
class OtherRepository extends CategoryRepository {
  final String _name;

  OtherRepository(this._name);

  // ini adalah noSuchMethod
  @override
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}

// noSuchMethod tanpa abstract class
// jika tanpa abstract class bebas menambahkan method apapun
class Repository {
  final String _name;

  Repository(this._name);

  // ini adalah noSuchMethod
  @override
  noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "select * from $_name where $column = '$value'";
    print(sql);
  }
}

void main() {
  // method tergantung yang ada pada abstract class
  CategoryRepository otherRepository = OtherRepository('products');
  otherRepository.id('1');
  otherRepository.name('Laptop');
  // otherRepository.blabla(1000); error

  // method bebas
  dynamic repository = Repository('products');
  repository.id('1');
  repository.name('Laptop');
  repository.blabla(1000);
}
