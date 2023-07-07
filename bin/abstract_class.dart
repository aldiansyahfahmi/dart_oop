// ini adalah abstract class
// bisa digunakan sebagai parent
abstract class Location {
  String? name;
}

class City extends Location {
  City(String name) {
    this.name = name;
  }
}

void main() {
  var city = City('Makassar');
  print(city.name);

  // var location = Location(); abstract class tidak bisa dibuatkan object
}
