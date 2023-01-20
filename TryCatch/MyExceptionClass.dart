void main(List<String> args) {
  try {
    Ogrenci ogr = Ogrenci(-5);
  } on SayiKontrol catch (e) {
    print(e.mesaj);
  }
}

class SayiKontrol implements Exception {
  String mesaj = "Sayı hatalı.";
  SayiKontrol(this.mesaj);
}

class Ogrenci {
  Ogrenci(int sayi) {
    if (sayi < 1) {
      print("Kontrol başladı.");
      throw SayiKontrol("Hatalı sayı girişi");
    } else {
      print("Öğrenci sayisi $sayi");
    }
  }
}
