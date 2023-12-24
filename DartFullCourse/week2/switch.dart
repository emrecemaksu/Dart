void main(List<String> args) {
  final int classDegree = 2;
  bool isSuccess = false;
  const int successValueHigh = 2;
  switch (classDegree) {
    case successValueHigh: //Bu daha iyi bir kullanım.
      print('Bravo');
      isSuccess = true;
      break;
    case 1:
      print('Olur');
      isSuccess = true;
      break;
    case 0:
      print('Yeterli');
      isSuccess = true;
      break;
    default:
      print('Geçersiz.');
      isSuccess = false;
  }
  print(isSuccess);
}
