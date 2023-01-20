import 'Asker.dart';
import 'Musteri.dart';
import 'Override_Extends.dart';

void main(List<String> args) {
  Musteri m1 = Musteri(10);
  m1.Kontrol = -10;
  print(m1.NoGoster);
  Tasit t1 = Tasit();
  t1.Motor();
  Araba a1 = Araba();
  //Upcasting olayı budur.
  Tasit a2 = Araba();
  a1.Motor();
  List<Tasit> Tasitlar = [];
  Tasitlar.add(t1);
  Tasitlar.add(a1);
  Tasitlar.add(a2);
  for (var item in Tasitlar) {
    print(item);
  }
  MotorKontrol(t1);
  MotorKontrol(a1);

  Asker asker1 = Asker("Emre", 10);
  asker1.Rutbe();
  Asker asker2 = Yuzbasi("emre", 23);
  asker2.Rutbe();
  Asker asker3 = Er("Zafer", 30);
  asker3.Rutbe();
}

//Polimofizm de nesnenin metoduna göre.
void MotorKontrol(Tasit arac) {
  arac.Motor();
}
