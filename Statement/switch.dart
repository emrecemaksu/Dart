void main(List<String> args) {
  var not = "AA";
  var sayi = 30;
  switch (not) {
    case "AA":
      print("Not AA");
      break;
    case "BB":
      print("Not BB");
      break;
    default:
      {
        print("Kötü Not veya Hatalı.");
      }
  }
  switch (sayi) {
    case 10:
      print("Sayı 10");
      break;
    case 20:
      print("Sayi 20");
      break;
    default:
      print("Sayi farklı.");
  }
}
