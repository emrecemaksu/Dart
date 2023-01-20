void main(List<String> args) {
  //if = ? else ise : şeklinde gösterilir.
  int sayi1 = 10;
  int sayi2 = 5;
  int yeniSayi2;
  int yeniSayi = sayi1 > sayi2 ? sayi1 : sayi2;
  sayi1 < sayi2 ? yeniSayi2 = sayi2 : yeniSayi2 = sayi1;
  print(yeniSayi2);
  print(yeniSayi);
  String? ad;
  String soyAd = "aksu";
  //Null kontrolü
  String? isim = ad ?? soyAd;
  print(isim);
}
