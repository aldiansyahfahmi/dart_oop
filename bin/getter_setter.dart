class Rectangle {
  int _width = 1;
  int _length = 1;

  // ini adalah metode enchapsulation
  // getter setter digunakan ketika field bersifat private
  // getter setter tidak disarankan jika hanya mengambil dan mengubah field itu sendiri
  int get width {
    return _width;
  }

  // disarankan jika ingin menggunakan setter harus ada logic tambahan di body nya, seperti validasi
  set width(int value) {
    if (value >= 1) {
      _width = value;
    }
  }

  int get length {
    return _length;
  }

  set length(int value) {
    if (value >= 1) {
      _length = value;
    }
  }
}

void main() {
  var recatangle = Rectangle();
  recatangle.width = -1;
  print(recatangle.width);

  recatangle.length = 200;
  print(recatangle.length);
}
