class Hayvan {
  Hayvan() {
    print("Ben bir hayvanım.");
  }
  void NefesAl() {
    print("Ben nefes alabiliyorum.");
  }
}

abstract class Ucabilen {
  void Uc();
  void Mesafe() {
    print("60m uçuyorum.");
  }
}

abstract class Yuruyebilen {
  void Yuru();
}

abstract class Havlayabilen {
  void Konus();
}

class Kopek extends Hayvan implements Yuruyebilen, Havlayabilen {
  //Extends aldığın sınıf metodunu istediğinde kullanmayabilirsin.
  @override
  void NefesAl() {
    super.NefesAl();
  }

  @override
  void Yuru() {
    print("Ben yürüyebiliyorum.");
  }

  @override
  void Konus() {
    print("Ben Havlayabiliyorum.");
  }
}

class Kus extends Hayvan implements Ucabilen {
  @override
  void Uc() {
    print("Ben uçabiliyorum.");
  }

  //Implement aldığın sınıftaki bütün metodları kullanmak zorundasın.
  @override
  void Mesafe() {
    print("Ben 70m uçuyorum.");
  }
}

//Normal sınıfı da implement yapabiliriz.
class Insan implements Hayvan {
  @override
  void NefesAl() {
    print("Ben insanım ve nefes alıyorum.");
  }
}
