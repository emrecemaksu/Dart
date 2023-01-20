void main(List<String> args) {
  /* try {
    int sayi = 100 ~/ 0;
    print(sayi);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } catch (e) {
    print(e);
  } finally {
    print("Program bitti.");
  } */

  try {
    int sayi = 100 ~/ 0;
    throw IntegerDivisionByZeroException();
    print(sayi);
  } catch (e) {
  } finally {
    print("Program bitti.");
  }
}
