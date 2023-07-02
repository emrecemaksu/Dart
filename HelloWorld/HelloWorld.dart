import 'ObjectOriented.dart';
import 'Test.dart';

void main(List<String> args) {
  // Valiables
  var image = 'aslanmax.jpg';
  var i = 5;
  var k = false;
  var dizi = [1, 2, 3];
  // Statements
  if (k == false) {
    print(image);
  } else {
    print(i);
  }
  for (var yaz in dizi) {
    print(yaz);
  }
  while (i <= 10) {
    i++;
    print(i);
  }
  var karem = karesi(5);
  print(karem);
  print(test('Emrecem'));
  Araba araba = Araba('Opel', DateTime(1997, 5, 13));
  araba.aciklama();
  Araba araba2 = Araba('Peugeout', null);
  araba2.aciklama();
  Araba araba3 = Araba.cikisTarihsiz('Renault');
  araba3.aciklama();

  final arac = Araclar.ford;
  if (arac.Spormu == false) {
    print('Ford marka araç Spor otomobil değil ' +
        (arac.aracTipi).toString() +
        ' dir.');
  }

  Kamyon kamyon = Kamyon('Spor', 'Ford', 4, 'dizel');
  kamyon.aciklama();

  var HarryPotter = {'Kulup1': 'Ravenclaw', 'Kulup2': 'Malfoy'};
  print(HarryPotter.toString());
}

// Functions
int karesi(int i) {
  var k = i * i;
  return k;
}

class Araba {
  String Name;
  DateTime? cikisTarihi;

  // Final olmayan sadece okunabilen değer
  int? get CikisYili => cikisTarihi?.year;

  Araba(this.Name, this.cikisTarihi) {
    //Constructor çağırılınca ilk çalışacak kod.
  }

  Araba.cikisTarihsiz(String name) : this(name, null);

  void aciklama() {
    print('Bu arabanın adı => ' + this.Name);
    var cikisTarihi = this.cikisTarihi;
    if (cikisTarihi != null) {
      int gun = DateTime.now().difference(cikisTarihi).inDays;
      print('Cikis Tarihi => $CikisYili ($gun gün önce)');
    } else {
      print('Çıkış Tarihi yok');
    }
  }
}

enum AracTipi { SUV, Spor, Hatchback }

enum Araclar {
  opel(aracTipi: AracTipi.SUV, tekerSayisi: 4),
  chevy(aracTipi: AracTipi.Spor, tekerSayisi: 4),
  ford(aracTipi: AracTipi.Hatchback, tekerSayisi: 4);

  final AracTipi aracTipi;
  final int tekerSayisi;

  const Araclar({required this.aracTipi, required this.tekerSayisi});

  bool get Spormu => AracTipi == AracTipi.Spor;
}
