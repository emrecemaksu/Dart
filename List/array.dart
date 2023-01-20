void main(List<String> args) {
  List<String> liste = ["emre", "cem", "aksu"];
  List liste2 = ["songul", "adnan"];
  //Spreads Operator
  var liste3 = [...liste2, ...liste];
  List<int> sayiListesi = List.filled(5, 0, growable: false);
  print(liste.length);
  print(liste.first);
  for (String i in liste) {
    print(i);
  }
  sayiListesi[0] = 12;
  print(sayiListesi[0]);
  List<dynamic> dinamik = List<dynamic>.filled(5, 0);

  liste.add("zafer");
  liste.add("nisa");
  print(liste);
  liste.removeAt(4);
  print(liste);
  liste.shuffle();
  print(liste);
  print(liste3);
}
