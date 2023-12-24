void main(List<String> args) {
  IUser2 userNormal = UserNormal('Emre', 454);
  print(userNormal.money);
  userNormal.sayHello();
}

abstract class IUser2 {
  final String name;
  final int money;

  IUser2(this.name, this.money);

  void sayHello() {
    print('Hoşgeldin => $name');
  }
}

class UserNormal implements IUser2 {
  final String nameUser;
  int moneyUser;

  UserNormal(this.nameUser, this.moneyUser);
  @override
  // TODO: implement money
  int get money => moneySet(moneyUser);

  int moneySet(int moneyUser) {
    return this.moneyUser = moneyUser;
  }

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  void sayHello() {
    print('Hoşgeldin Normal Kullanıcı $nameUser');
  }
}

class UserAdmin {}

class UserBusiness {}
