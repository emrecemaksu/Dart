void main(List<String> args) async {
  print("Program başladı.");
  String kisi = await KisiGetir();
  print(kisi);
  BekletmeyenKisiGetir();
  print("Program bitti.");

  Future<int> sayi = Future(
    () {
      int toplam = 0;
      for (var i = 0; i < 10; i++) {
        toplam += i;
      }
      return toplam;
    },
  );

  sayi
      .then((value) => print(value))
      .catchError((e) => print(e))
      .whenComplete(() => "Toplama bitti");
}

Future<String> KisiGetir() {
  return Future.delayed(Duration(seconds: 5), (() {
    return "Emre Cem AKSU";
  }));
}

void BekletmeyenKisiGetir() async {
  String kisi = await KisiGetir();
  print(kisi);
}
