void main(List<String> args) {
  int money = 0;
  money++;
  print(money);
  ++money;
  print(money);
  String name = 'Emre';
  if (name == 'emre') {}
  if (name != 'emre') {}
  if (name.length <= money) {}
  num altMoney = 9.5; //int ve doubleı kapsar. Daha geniş kullanımlıdır.
  print(altMoney % 2 == 0);
  int sayi = 5;
  print(sayi.isOdd);
  int newMoney = altMoney ~/ sayi;
  print(newMoney);
}
