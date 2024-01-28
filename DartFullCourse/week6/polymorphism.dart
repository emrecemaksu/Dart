// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  IUser3 user = Turk(name: 'Emre');
  user.sayHello();
  user = Eng();
  user.sayHello();
}

abstract class IUser3 {
  String name;
  IUser3({
    required this.name,
  });
  void sayHello();
}

class Turk implements IUser3 {
  @override
  String name;

  Turk({required this.name});
  @override
  void sayHello() {
    print('Hoşgeldin Sayın $name');
  }
}

class Eng implements IUser3 {
  @override
  String name = 'Adam';

  @override
  void sayHello() {
    print('Welcome to $name');
  }
}
