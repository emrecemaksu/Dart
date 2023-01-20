class Asker {
  Asker(String ad, int yas) {
  }
  void Rutbe() {
    print("Ben sadece bir askerim.");
  }
}

class Yuzbasi extends Asker {
  Yuzbasi(String isim, int yasim) : super(isim, yasim) {
    print("Benim adım $isim ve ben $yasim 'ındayım.");
  }
  @override
  void Rutbe() {
    print("Benim rütbem yüzbaşı");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Benim adım $ad ve ben $yas 'ındayım.");
  }
  @override
  void Rutbe() {
    print("Benim rütbem yok.");
    super.Rutbe();
  }
}
