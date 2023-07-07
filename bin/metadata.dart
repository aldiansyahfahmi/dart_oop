// meta data berguna untuk menandai suatu kode
class Sample {
  // ini adalah anotation @ovveride
  @override
  String toString() {
    return 'Sample';
  }

  // ini adalah anotation @Deprecated
  @Deprecated('Do not use this anymore')
  void doNotUserThis() {}
}

// buat anotation sendiri
class Todo {
  final String message;

  const Todo(this.message);
}

// implementasi dari anotation yang dibuat
@Todo('Will be implemented next release')
class Application {
  @Todo('Will be implemented next release')
  String? name;

  @Todo('Will be implemented next release')
  void featureA() {}
}
