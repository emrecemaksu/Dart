import 'AbstarctSinif.dart';
import 'FinalConst.dart';
import 'Implementation.dart';
import 'Statics.dart';

void main(List<String> args) {
  Kare k1 = Kare(5);
  print(k1.alanHesapla());
  print(k1.cevreHesapla());
  k1.hangiSekil();
  test(k1);

  Hayvan h1 = Insan();
  h1.NefesAl();
  Kus kus1 = Kus();
  kus1.Uc();
  kus1.Mesafe();

  Hesaplama hsp1 = Hesaplama();
  //Toplamaya static olduğu için başka yerden Sınıf adıyla eriştim.
  print(Hesaplama.Topla(10, 5));
  print(hsp1.Cikar(10, 5));
  print(Hesaplama.IslemSayisi);

  const Sayilar sayi1 = Sayilar(5, 10);
  final Sayilar sayi2 = const Sayilar(6, 12);

  if (sayi1 == sayi2) {
    print(sayi1.hashCode);
    print(sayi2.hashCode);
    print(sayi2);
  } else {
    print("Eşit değil.");
  }
}

void test(Sekil sekil1) {
  sekil1.hangiSekil();
}
