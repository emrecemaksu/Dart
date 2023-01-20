void main(List<String> args) {
  Okul(10, "Çiğdem İÖO");
  // ignore: unused_local_variable
  Okul caal = new Okul.ogrencikontrol(-90, "Sanane");
}

class Okul {
  int? ogrenciSayisi;
  String? okulAdi;
  Okul(this.ogrenciSayisi, this.okulAdi) {
    print("Öğrenci mevcudu: $ogrenciSayisi ve Okulun adi: $okulAdi");
  }
  //Return döndüren Constructor için factory kullanılır.
  // değişken veya metodların başına _ koyarsan private olur. 
  factory Okul.ogrencikontrol(int ogrenciSayisi, String okulAdi) {
    if (ogrenciSayisi < 0 || ogrenciSayisi > 10000) {
      return Okul(0, "Geçersiz");
    } else {
      return Okul(ogrenciSayisi, okulAdi);
    }
  }
}
