class Hesaplama {
  static int IslemSayisi = 0;
  static int sayi4 = 0;
  static int Topla(int sayi1, int sayi2) {
    IslemSayisi++;
    //Cikar(); Static metod içinde normal metod kullanamam.
    return sayi1 + sayi2;
  }

  int Cikar(int sayi1, int sayi2) {
    //Normal metod içinde Static metod kullanabilirim.
    Topla(10, 20);
    IslemSayisi++;
    sayi4 = 10;
    return sayi1 - sayi2;
  }
}
