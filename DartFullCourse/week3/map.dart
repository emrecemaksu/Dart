void main(List<String> args) {
  Map<int, String> isimId = {1: 'Emre', 2: 'Nisa'};
  print(isimId[1]);
  for (var element in isimId.keys) {
    print('$element ' + '${isimId[element]}');
  }

  Map<int, List<String>> sinif = {
    1: ['Veli', 'Emre'],
    2: ['Kerem', 'Cem']
  };

  for (var keys in sinif.keys) {
    print(sinif[keys]);
    if (sinif[2]!.contains('Kerem')) {
      print(sinif[2]);
      return; //Programı tamamen durdurur. break; ise döngüyü sonlandırır.
    }
  }
}

List<String> isim = ['emre'];
