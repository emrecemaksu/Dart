void main(List<String> args) {
  String? userName;
  try {
    if (userName!.length > 2) {}
  } catch (e) {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'UserName boş gelmiş';
  }
}
