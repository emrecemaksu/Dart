// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  Kalem kalem = TukenmezKalem(name: 'Kalem');
  kalem.yazKalem();
  kalem = DolmaKalem(name: 'Dolmam');
  kalem.yazKalem();
}

//! S Sadece kendi işini yap.

class Manager {
  String name;

  Manager(this.name);

  void changeUserName(String name) {
    this.name = name;
  }

  //! Ne alaka kardeşim ben yöneticiyim.
  void getWater(String bardak) {}
}

//!O Core kısmına kapalı tutarak sınıfa özellik ekleyebilmeliyiz.

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);
  final String category = 'Sebze';
}

//! L -> Bir class yapıyorsan üst ve alt sınıflar eşitlenebilmeli.
//! -> Alt sınıflar arası geçiş yapabilmeliyim.

abstract class Kalem {
  String name;
  Kalem({
    required this.name,
  });
  void yazKalem() {}
}

class DolmaKalem extends Kalem {
  DolmaKalem({required super.name});
  @override
  void yazKalem() {
    print('Dolma yemeği ile alakam yok.');
  }
}

class TukenmezKalem extends Kalem {
  TukenmezKalem({required super.name});
  @override
  void yazKalem() {
    print('Tükenmez bu ateş');
  }
}

//! D Dependency Invension Bağımlılığı tersine çevirme
abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IPhoneCameraRead iPhoneCameraRead;
  DeviceCameraManager(this.iPhoneCameraRead);
  @override
  void readQR() {}
}

class IPhoneCameraRead extends ICameraManager {
  @override
  void readQR() {}
}
