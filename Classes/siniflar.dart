void main(List<String> args) {
  kisi Emre = kisi();
  var Nisa = kisi();
  String isim = Emre.ad;
  print(isim);
  print(Nisa.yas);
  Emre.geldinMi();
}

class kisi {
  int yas = 20;
  String ad = "Emre";
  void geldinMi() {
    print("Geldim.");
  }
}
