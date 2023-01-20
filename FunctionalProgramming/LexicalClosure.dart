void main(List<String> args) {
  Function fonksiyonDegisken = fonksiyon(10);
  int toplam = fonksiyonDegisken(4);
  print(toplam);
}

Function fonksiyon(int e) {
  return (int i) => i + e;
}
