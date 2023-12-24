void main(List<String> args) {
  final musteriParasi = 100;
  final musteriMaasi = 34000;
  print(maasiCarpma(38,maas1: musteriMaasi));
  bool paraVarMi = false;
  if (musteriParasi > 0) {
    paraVarMi = true;
    controlUserMoney(paraVarMi);
  } else {
    controlUserMoney(paraVarMi);
  }
  print('Müsterinin Parasının Yarısı => ' +
      '${musteriParasininYarisi(musteriParasi)}');
}

void controlUserMoney(bool kontrol) {
  switch (kontrol) {
    case true:
      print('Para çok');
      break;
    default:
      print('Para Yok');
  }
}

int musteriParasininYarisi(int musteriParasi) {
  return musteriParasi ~/ 2;
}

int maasiCarpma(int musteriYasi,{required int maas1, int carpan = 2}) {
  return maas1 * carpan;
}
