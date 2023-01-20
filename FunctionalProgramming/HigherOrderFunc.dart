class Hesapla {
  static void KendiForEachYapim(List liste, Function fonk) {
    for (var i = 0; i < liste.length; i++) {
      fonk(liste[i]);
    }
  }
}
