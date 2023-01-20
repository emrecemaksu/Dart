class Sinif {
  int? _ogrenci;
  void set ogrenciSayisi(int sayi) {
    if (sayi > 0) {
      _ogrenci = sayi;
    } else {
      return;
    }
  }

  String get sayiYazdir => "Ogreci sayisi $_ogrenci";
  //Yada Constructor metodun içine koşulu kontrol eden herhangi bir metod yazarak bunu yaptırabiliriz.
}
