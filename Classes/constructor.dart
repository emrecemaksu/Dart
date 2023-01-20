void main(List<String> args) {
  var reno = Araba(12, true, "Reno");
  var opel = Araba(12);
  reno.aciklama();
  opel.aciklama();
}

class Araba {
  int modelYasi = 0;
  bool? dizelMi = true;
  String? model = "";
  //Constuctor Metod. Sınıfın Yapıcı metodu.
  Araba(this.modelYasi, [this.dizelMi, this.model]) {
    print("Constructor çalıştı.");
  }
  void aciklama() {
    print(
        "Bu arabanın ${modelYasi}. Bu araba ${dizelMi}. Ve bu araba ${model}'dir.");
  }
}
