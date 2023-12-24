void main(List<String> args) {
  // ignore: unused_local_variable
  String userName = 'Emre';
  // ignore: unused_local_variable
  var userName2 = 'Cem';
  //final var bankingMoney = 34; Final var alamaz.
  // ignore: unused_local_variable
  final int bankingMoney = 23;
  //bankingMoney += 5; Final olan değişkende değer değiştirilemez.
  ///Final RunTimeda çalışır. O anki zaman değişkeni gibi.
  // ignore: unused_local_variable
  const String bankName = 'Deutsche Bank';

  ///Compile zamanında const derlenir. Runtime da değişmez.

  // ignore: unused_local_variable
  const String bank1Name = 'Yapıkredi';
  // ignore: unused_local_variable
  final bank1User1 = 'Emre';
  double user1Money = 20.0;
  // ignore: unused_local_variable
  final String bank1User2 = 'Ahmet';
  int user2Money = 50;
  user2Money -= user1Money.toInt();
  print('User2 Money => '+ '$user2Money');
}
