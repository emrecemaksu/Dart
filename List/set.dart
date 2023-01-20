void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("emre");
  isimler.add("Nisa");
  isimler.add("Zafer");
  for (String i in isimler) {
    print(i);
  }
  Set<int> sayilar = Set.from([23, 34, 24, 23, 234, 234]);
  sayilar.remove(23);
  for (var item in sayilar) {
    print(item);
  }
}

//Set ler uniq değerleri tutmak için kullanılır. Çekilişteki 5 tane aynı adamı engellemek gibi.
//Index dizilimi yoktur. Listten farklı olarak.