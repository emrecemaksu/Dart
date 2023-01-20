abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void hangiSekil() {
    print("Ben herhangi bir şeklim.");
  }
}

class Kare extends Sekil {
  double kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar;
  }

  @override
  double cevreHesapla() {
    return 4 * kenar;
  }

  @override
  void hangiSekil() {
    print("Ben Kareyim.");
  }
}

class Dikdortgen extends Sekil {
  double kenar1;
  double kenar2;
  Dikdortgen(this.kenar1, this.kenar2);
  @override
  double alanHesapla() {
    return kenar1 * kenar2;
  }

  @override
  double cevreHesapla() {
    return 2 * (kenar1 + kenar2);
  }

  @override
  void hangiSekil() {
    print("Bu bir Dikdörtgen.");
  }
}
