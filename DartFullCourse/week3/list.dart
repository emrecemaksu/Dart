void main(List<String> args) {
  List<int> money = [110, 100, 500];
  final List<int> sayilar = [45, 78, 96];

  ///Referans Tipini Final tutar. Listenin içine erişebiliyoruz!!!
  print(money[1]);
  money.sort();
  money.add(5);
  money.insert(2, 30);
  money.insert(0, 5);
  print(money);
  sayilar.add(17);
  print(sayilar);
  print(sayilar.removeAt(1));
  print(sayilar);
  List<int> tersSayilar = sayilar.reversed.toList();
  print(tersSayilar);
  List<double> liste100 = List.generate(10, (index) {
    return index + 5;
  });
  print(liste100);
  List<int> customer = [100, 30, 40, 60];
  customer.sort();
  print(customer);
  customer.reversed; //Iterable olduğundan çevirmedi. Yeni listeye almam lazım.
  print(customer);
  for (var element in customer) {
    if (element > 35) {
      print('Kredi Verebiliriz.');
    } else {
      print('Sana kredi yok');
    }
  }

  List<dynamic> user = ['Emre', 1, true]; //var ile dynamic aynı mantık.
  ///dynamic bir liste kullanmak önerilmez!!!!
  for (var element in user) {
    print(element);
  }
  List<String> userName = ['Ali', 'Veli', 'Emre'];
  //Bu for yapısı yerine Contains de kullanabiliriz. Contains true dönderir.
  for (var element in userName) {
    if (element == 'Ali') {
      print(element);
    }
  }
  print(userName.contains('Veli'));
}