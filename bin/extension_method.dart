import 'class.dart';

// ini adalah extension method
// berguna untuk menambah method ke dalam sebuah class tanpa mengubah isi dari class tersebut
extension SayGoodByeOnPerson on Person {
  void sayGoodBye(String paramName) {
    print('Good bye $paramName, from $name');
  }
}

void main() {
  var person = Person();
  person.sayGoodBye('Budi');
}
