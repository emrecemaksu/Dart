class Tasit {
  Tasit() {
    print("Constructor Tasit Metod Çalıştı");
  }
  void Motor() {
    print("Bu araçların Motoru vardır.");
  }
}

class Araba extends Tasit {
  Araba() {
    print("Constructor Araba Metod Çalıştı");
  }
  @override
  void Motor() {
    print("Arabaların 1L veya 5L arası değişen motorları vardır.");
  }
}

class AgirVasita extends Tasit {
  Ticari() {
    print("Constructor Ticari Metod Çalıştı");
  }

  @override
  void Motor() {
    print("Kamyonların 2L ile 10L arası değişen motorları vardır.");
  }
}
