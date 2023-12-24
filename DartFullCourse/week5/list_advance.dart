// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final araba1 = Arabalar(
    carMmodel: carModels.Mercedes,
    name: 'GLA',
    money: 780000,
    ikinciEl: true,
  );
  final List<Arabalar> carItem = [
    Arabalar(
        carMmodel: carModels.Mercedes,
        name: 'GLA',
        money: 780000,
        ikinciEl: true),
    Arabalar(
        carMmodel: carModels.Toyota,
        name: 'Yaris',
        money: 788000,
        ikinciEl: false),
    Arabalar(carMmodel: carModels.BMW, name: 'Yaris', money: 79000),
  ];
  final resultCount = carItem
      .where(
        (element) => element.ikinciEl == true,
      )
      .length;
  print(resultCount);
  final newCar =
      Arabalar(carMmodel: carModels.BMW, name: 'Yaris', money: 79000);
  final control = carItem.contains(newCar);
  if (control) {
    print('Evet Bu araba bizde var');
  } else {
    print('Yok Alalım');
  }

  final resultMercedesMore50 = carItem
      .where(
        (element) =>
            element.carMmodel == carModels.Mercedes && element.money > 50000,
      )
      .toString();
  print(resultMercedesMore50);

  final carNames = carItem.map((e) => e.name).join(',');
  print(carNames);

  try {
    final mercedesCar = carItem.singleWhere(
      (element) => element.carMmodel == carModels.Toyota,
    );
    print(mercedesCar);
  } catch (e) {
    print('Araba yok');
  } finally {
    print('Her türlü senaryoda çalışırım.');
  }
  final index = carItem.indexOf(newCar);
  print(index);
}

class Arabalar {
  final String name;
  final int money;
  final carModels carMmodel;
  String? sehir;
  bool ikinciEl;
  Arabalar({
    required this.name,
    required this.money,
    required this.carMmodel,
    this.sehir,
    this.ikinciEl = true,
  });

  @override
  bool operator ==(covariant Arabalar other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.money == money &&
        other.carMmodel == carMmodel &&
        other.sehir == sehir &&
        other.ikinciEl == ikinciEl;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        money.hashCode ^
        carMmodel.hashCode ^
        sehir.hashCode ^
        ikinciEl.hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$name ve arabanın fiyatı $money';
  }
}

enum carModels { BMW, Toyota, Mercedes }

//Map yapmak demek bundan yeni bvir obje oluşturmak anlamına gelir.