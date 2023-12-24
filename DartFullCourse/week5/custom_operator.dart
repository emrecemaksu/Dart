void main(List<String> args) {
  final bank1 = Bank(40, 'e4', 'emre');
  final bank2 = Bank(80, 'e4', 'Nisa');
  print(bank1 + bank2);
  print(bank1 == bank2);
  //Cascade Notation
  bank1
    ..id = 'a8'
    ..money += 79
    ..name = 'Murat';
}

class Bank with BankMixin {
  int money;
  String id;
  String name;
  Bank(this.money, this.id, this.name);

//Operatorü bu şekilde override edebiliyoruz.
  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  bool operator ==(Object newBank) {
    return newBank is Bank && this.id == newBank.id;
  }

  @override
  void sayHello() {
    calculateMoney(85);
  }
}

mixin BankMixin {
  //Mixin de değişken tanımlamayız. Yardımcı fonk eklemek için gibi düşün.
  void sayHello();
  void calculateMoney(int money) {
    print('Money');
  }
}
