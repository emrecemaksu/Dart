void main(List<String> args) {
  final rengim = Renkler.mavi;
  print(rengim);
  print(Renkler.kirmizi.index);
  print(rengim.name);
  rengim.renkName();
  switch (Renkler) {
    // ignore: constant_pattern_never_matches_value_type
    case Renkler.mavi:
      break;
    // ignore: constant_pattern_never_matches_value_type
    case Renkler.kirmizi:
      break;
    // ignore: constant_pattern_never_matches_value_type
    case Renkler.sari:
      break;
    default:
  }
}

enum Renkler { mavi, kirmizi, sari }

extension RenkKontrol on Renkler {
  void renkName() {
    if (this.name == 'mavi') {
      print('Mavi');
    }
  }
}
//Extentionlar en güzel enumlarla kullanılabilir.