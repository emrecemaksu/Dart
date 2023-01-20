void main(List<String> args) {
  int toplam = topla(5);
  print("Sayıların toplamı => $toplam");
  int carpim = carp(4, s2: 5);
  print("Çarpım sonucu => $carpim");
}

//Optional
int topla(int sayi3, [int sayi1 = 0, int sayi2 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

//Optional Named

int carp(int s1, {int s2 = 1, int s3 = 1}) {
  return s1 * s2 * s3;
}
