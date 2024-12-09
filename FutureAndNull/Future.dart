
void main(List<String> args) {
  print("Program başladı.");
  Ertele();
  Future<String> mainSonuc = Beklet();
  print("Program bitti");
  mainSonuc.then((String value) => print(value)).catchError((e) {
    print(e);
  }).whenComplete(() => print("Bekletme işlemi tamamlandı."));
  Yavaslat()
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => print("Yavaşlatma tamamlandı."));
}

void Ertele() {
  //sleep(Duration(seconds: 5)); Program bekletiyor burada.
  Future.delayed(Duration(seconds: 3), (() => print("İşlem yapıldı.")));
  print("Erteleme fonksiyonundayız. İşlem daha önce başladı.");
}

Future<String> Beklet() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 5), (() {
    return "Bekletildi ve İşlem bitti.";
    //throw Exception("Bekletildi ve error verildi.");
  }));
  return sonuc;
}

Future<String> Yavaslat() {
  return Future.delayed(Duration(seconds: 5), (() {
    return "Yavaşlatma yapıldı.";
  }));
}
