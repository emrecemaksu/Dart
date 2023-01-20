class Sayilar {
  // Const static immutable anlamına gelir ve static değiştirilemeyen olur.
  final int sayi1 = 10;
  //sayi1 = 34; Hata veriyor.
  static const int sayi2 = 12;
  //sayi2 = 45; Hata veriyor.
  //final suan = DateTime.now(); Bunu kapattım çünkü Constructor metod çalışıtrmıyor.
  //static const suan = DateTime.now(); Çünkü compile anında const olan hazır olması gerekiyor.
  const Sayilar(final int sayi1, final int sayi2);
}
