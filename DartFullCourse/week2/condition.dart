void main(List<String> args) {
  String userName = 'Emre';
  int userMoney = 20;
  // ignore: unused_local_variable
  bool isCustomerRich = false;
  print('$userMoney ' + '$userName');
  if (userMoney > 10) {
    print('Zenginsin');
  } else {
    print('Fakirsin.');
  }
  userMoney -= 11;
  if (userMoney > 10) {
    print('Zenginsin.');
  } else {
    print('Fakirsin');
  }

  final int bankingCost = 5;
  int customerMoney = 23;
  if (customerMoney > bankingCost) {
    print('Hoşgeldin.');
    customerMoney -= bankingCost;
  } else if (bankingCost == customerMoney) {
    print('Sorgu sonucu paran sıfırlandı');
  } else {
    print('İşlem yapılamadı.');
  }

  final List<String> customer = ['emre', 'nisa', 'abdurrezak'];
  for (var element in customer) {
    if (element.length < 5) {
      print(element);
    } else {
      print('Bu isim 4 karakterden uzun => ' + '$element');
    }
  }

  final compName1 = 'Vaikiki';
  final compName2 = 'Karfir';
  final compName3 = 'Abdrurrrezzak';
  String result = '';
  int compNameLenghtMax = 8;
  if (compName1.length < compNameLenghtMax) {
    result = result + compName1;
  }
  if (compName2.length < compNameLenghtMax) {
    result = result + ' ' + compName2;
  }
  if (compName3.length < compNameLenghtMax) {
    result = result + compName3;
  }
  if (result.isEmpty) {
    print('Değer yok');
  } else {
    print(result);
  }
}
