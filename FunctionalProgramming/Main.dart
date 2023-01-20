import 'HigherOrderFunc.dart';

void main(List<String> args) {
  //Fonksiyonu değişken gibi oluştururuz.
  Function f1 = (int sayi1, int sayi2) {
    return sayi1 + sayi2;
  };
  var f2 = (int sayi1, int sayi2) => sayi1 * sayi2;

  int toplam = f1(10, 5);
  int carpim = f2(12, 5);
  print(toplam);
  print(carpim);

  List<int> listem = [12, 13, 15];
  listem.forEach((element) {
    print(element);
  });
  listem.forEach(yazdir);
  Hesapla.KendiForEachYapim(listem, yazdir);
}

void yazdir(int eleman) {
    print(eleman);
  }
