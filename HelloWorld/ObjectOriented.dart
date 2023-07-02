// Araba Tasit sınıfından inherit alır.

class Tasit {
  String Tip;
  Tasit(this.Tip);
}

class Kamyon extends Tasit with yakitTipi {
  String Name;
  int TekerSayisi;
  Kamyon(super.Tip, this.Name, this.TekerSayisi, yakitTipi);

  void aciklama() {
    print(Name);
    print(TekerSayisi);
    aciklamam();
    print(Tasit(Tip));
  }
}

mixin yakitTipi {
  String yakit = 'Dizel';
  void aciklamam() {
    print(yakit);
  }
}
