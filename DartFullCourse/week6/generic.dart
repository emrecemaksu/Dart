// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  final user = User(data: 1);
  final adminUser = AdminUser();
  user.data;
  removeUserAll(adminUser);
}

void removeUserAll<T extends IAdmin>(T data) {
  data.removeUser();
}

class User<T> {
  T data;
  User({
    required this.data,
  });
}

abstract class IAdmin {
  int? userId;
  void removeUser();
}

class AdminUser extends IAdmin {
  @override
  void removeUser() {}
}

class NormalUser implements IAdmin {
  @override
  void removeUser() {}

  @override
  int? userId;
}
