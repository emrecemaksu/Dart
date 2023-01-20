void main(List<String> args) {
  isimSoyle();
  int yas = yasSoyle(25);
  print("Emrenin yasi -> $yas");
  int toplam = sayiTopla(12, 23);
  print("Sayıların toplamı => $toplam");
  int buyuk = sayiBuyuk(21, 22);
  print("Büyük olan sayı => $buyuk");
}

//Parametresiz
void isimSoyle() {
  print("Ben Emre Cem AKSU");
}

int yasSoyle(int yas) {
  return yas;
}

int sayiTopla(int s1, int s2) => s1 + s2;

int sayiBuyuk(int s1, int s2) => s2 < s1 ? s1 : s2;

