class Sum {
  int first;
  int second;

  Sum(this.first, this.second);

  // ini adalah callable
  int call() => first + second;
}

void main() {
  var sum = Sum(10, 5);
  // kita bisa lansung memanggil object nya sja tanpa memanggil methodnya
  print(sum);
  // memanggil object + method
  print(sum.call());
}
