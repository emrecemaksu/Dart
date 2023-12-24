
void main(List<String> args) {
  final user = _User('Emre', age: 21);
  //is bir eğer int tipliyse gibi bir anlamda kullnılır.
  //user.age is! int => int değilse anlamındadır.
  if (user.age is int) {
    if (user.age! < 18) {
      print('18 yaşından küçük');
      user.updateMoneyWithString('TR');
      print((user.moneyType as String) + 'A');
    } else {
      user.updateMoneyWithNumber(25);
      print(user.moneyType);
    }
  }
  final _newType = user.moneyType is String ? user.moneyType as String : user.moneyType as int;
  print(_newType);
}

//_ sınıfı private yapar.
class _User {
  final String name;
  int? age;
  dynamic moneyType;
  _User(this.name, {required this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}
