void main(List<String> args) {
  User user1 = User('Emre', 20000);
  print(user1.userName);
  BusinessBankUser businessBankUser = BusinessBankUser(
      userName: 'Emre', money: 23000, bankingCode: 28, discount: 2);
  print(businessBankUser.money);
  print(businessBankUser.makeDiscount);
}

abstract class IUser {
  final String? userName;
  final int? userMoney;

  IUser(this.userName, this.userMoney);

  void sayMoneyName() {
    if (userMoney != null && userMoney! > 0) {
      print('Paranız => ' + '$userMoney');
    } else {
      print('Paranız Yok.');
    }
  }
}

class User extends IUser {
  User(super.userName, super.userMoney);
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(String userName, int money, {required this.bankingCode})
      : super(userName, money);
}

class BusinessBankUser extends IUser {
  final String userName;
  final int money;
  final int bankingCode;
  late final int _discount;

  BusinessBankUser(
      {required this.userName,
      required this.money,
      required this.bankingCode,
      required int discount})
      : super(userName, money) {
    _discount = discount;
  }

  int get makeDiscount => money - (money ~/ _discount);
}
