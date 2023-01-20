class Musteri {
  int? _MusteriNo;
  Musteri(int MusteriNo) {
    this._MusteriNo = MusteriNo;
    _MusteriNoKontrol(MusteriNo);
  }
  void _MusteriNoKontrol(int No) {
    if (No < 0 || No > 100000) {
      print("Değer hatalı.");
    } else
      return;
  }

  void set Kontrol(int No) {
    if (No < 0 || No > 100000) {
      print("Değer hatalı.");
    } else
      return;
  }

  String get NoGoster => "Müşteri Numarası $_MusteriNo";
}
