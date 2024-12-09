
void main(List<String> args) {
  int sayi = 10;
  num sayi2 = 15;
  double sayi3 = 10.5;
  print(sayi3);
  String Ad = "Emre";
  print(Ad + " Cem Aksu");
  bool adamMi = true;
  bool issizMi = false;
  print(adamMi);
  var deger = 35.13;
  print(deger);
  int noktasiz = 35.5.toInt();
  //double noktali = 45.5.toInt(); Kullanamazsın
  print(noktasiz);
  int? sayi4 = null;
  print(sayi4);
  //var? sayi5 = null; var da kullanılmaz.
  int HexadecimalSayi = 0x10;
  print(HexadecimalSayi);
  //Interpolation olayı
  print("$Ad");
  print("$Ad 'ımın uzunluğu -> " + Ad.length.toString());
  print("${Ad.length}");
}
