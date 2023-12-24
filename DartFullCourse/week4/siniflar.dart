// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'models/siniflar_modal.dart';

void main(List<String> args) {
  int? sayi;
  List<int?> custormerMoney = [100, null, 0];
  for (var element in custormerMoney) {
    if (element != null) {
      print(element);
    } else {
      print('Hesap Oluştur.');
    }
    bool result = kontrolMoney(element) == null ? false : true;
    print(result);
  }
  //int toplam = sayi! + 5;
  // ! => Allah çarpsın sayida değer var.
  // ignore: unnecessary_null_comparison
  if (sayi != null) {
    int toplam = sayi + 5;
    print(toplam);
  }
  print(kontrolMoney(null));
  kontrolMoney(5);

  print('-----' * 10);
  User user1 = User('Emre', 200, age: 28, city: 'İstanbul');
  User user2 = User('Nisa', null, age: 28, city: null);
  print(user1.name);
  print(user2.cityCode);

  User2 user21 =
      User2(id: '12', name: 'Emre', age: 23, city: 'İstanbul', money: 24000);
  if (user21.isUserId('12')) {
    user21.money += 10;
    print('indirim yapıldı');
  }
  print(user21.isId);
}

// ignore: body_might_complete_normally_nullable
int? kontrolMoney(int? money) {
  if (money == null || money < 0) {
    return null;
  }
  // ignore: unnecessary_null_comparison
  if (money != null && money >= 0) {
    print('Para ve Hesap var' + ' ' + '$money');
    return money;
  }
}

class User {
  late final String? name;
  late final int? money;
  late final int? age;
  late final String? city;
  late final String cityCode;
//Late kavramı bunun değeri yok ama sonradan kesin oluşturulacak demek.
  User(String name, int? money, {int? age, String? city}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    cityCode = (city ?? 'ist') + name;
  }
}
