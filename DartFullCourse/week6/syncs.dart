void main(List<String> args) async{
  Stream<int> bankMoney = Stream.empty();
  bankMoney = _dataAddBankMoney(1, 5);
  /*
  bankMoney.listen(
    (event) {
      print(event);
    },
  );
  */
  print(await bankMoney.where(
    (event) => event == 26,
  ).toList());
}

//sync hep dinleriz. Stream kullanırız.

Stream<int> _dataAddBankMoney(int money, int retryCount) async* {
  int _localRetry = 0;
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}

//sync olunca iterable dönmemiz lazım