void main(List<String> args) {
  myUser benimUser = myUser('Emre', 28);
  print(benimUser.checkAge());
}

class myUser {
  final String userName;
  final int userAge;

  myUser(this.userName, this.userAge);
}

extension UsercheckAge on myUser {
  bool checkAge() {
    if (userAge > 0 && userAge < 100) {
      return true;
    }
    return false;
  }
}
