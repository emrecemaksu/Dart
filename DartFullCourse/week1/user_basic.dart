void main(List<String> args) {
  int userMoney = 25;
  String userName = 'Emre';
  userMoney = userMoney + 5;
  print('Merhaba ' + '${5 + 10}');
  print('Merhaba $userName Paranız => ' + '$userMoney');
  userMoney = userMoney - 10;
  print('Paranız değer kaybetti => $userMoney');
  userMoney += 5;
  print(userMoney);
  userMoney = userMoney ~/ 2;
  print(userMoney);
  double emreMoney = 15.2;
  emreMoney /= 2;
  print(emreMoney);
}
