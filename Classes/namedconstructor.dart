void main(List<String> args) {
  // ignore: unused_local_variable
  Okul cigdem = new Okul("İstanbul", "Çiğdem");
  // ignore: unused_local_variable
  Okul feritinal = new Okul.ilsizokul("Ferit İnal");
}

class Okul {
  String? okulAdi;
  String? il;
  Okul(this.il, this.okulAdi) {
    print("Ana Constructor");
    print("Bu okul $il 'inde bulunan $okulAdi 'dır");
  }
  Okul.ilsizokul(this.okulAdi) {
    print("Named Constructor çalıştı");
    print("Bu okul $okulAdi 'dır");
  }
}
