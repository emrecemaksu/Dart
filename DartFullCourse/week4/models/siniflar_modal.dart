//Bütün classlar Obbjectden extends edilirler.

class User2 extends Object{
  final String? name;
  int _money;

  int get money => _money;

  set money(int? value) {
    _money = value == null ? 0 : money;
  }

  final int? age;
  final String? city;
  late String _id;
  //_ geldiği zaman private değişken olur. siniflar.dart hariç erişemeyiz.
  //encaptulation
  User2(
      {required this.name,
      required int money,
      required this.age,
      required this.city,
      required String id})
      : _money = money {
    this._id = id;
  }

  bool isUserId(String id) {
    return this._id == id;
  }

  bool get isId => _id.isNotEmpty;
}
