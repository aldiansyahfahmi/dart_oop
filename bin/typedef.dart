class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  int call() => first + second;
}

// ini adalah typedef
// digunakan untuk membuat alias terhadap class yang sudah ada
// typedef juga bisa digunakan untuk function
typedef Jumlah = Sum;
typedef Total = Sum;

void main() {
  var jumlah = Jumlah(10, 5);
  print(jumlah());

  var total = Total(10, 5);
  print(total());
}
