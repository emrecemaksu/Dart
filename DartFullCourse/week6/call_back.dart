// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  User user = User(money: 5); 
  user.calculateMoney((int result) {
    print(user.money);
  });
}

//Tip tanımlama işlemi
typedef CalculateCallBack = void Function(int data);

class User {
  //Metadata JSON Seriziable da kullanılıyormuş.
  @deprecated
  int money;
  User({
    required this.money,
  });

  /*
  void calculateMoney(void Function(int data) onComplete) {
    money += 5;
    onComplete(money);
  }
  */
  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
  
}
