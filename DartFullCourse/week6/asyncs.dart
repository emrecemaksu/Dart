Future<void> main(List<String> args) async {
  print('Emre');
  /*
  await Future.delayed(Duration(seconds: 5));
  await Future.forEach([1, 2, 3, 4], ((element) async {
    await Future.delayed(Duration(seconds: 2));
    print('İşlem bitti $element');
  }));
  */
  print('cem');
  print('Hello 1');
  Future.delayed(Duration(seconds: 2)).whenComplete(
    () {
      print('Hello 2');
    },
  );
  print('Hello 3');
  Future.delayed(Duration(seconds: 1)).whenComplete(
    () {
      print('Hello 4');
    },
  );
}

//Servise gidip gelcem
//hesap zaman alacak
//Async varsa Future da vardır.
//Await yok ise ana işlemler biter Futureler başlar.