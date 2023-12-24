void main(List<String> args) {
  String? name = 'Emre';
  print(name.isAdmin());
}

extension StringAdminIsCheck on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}
