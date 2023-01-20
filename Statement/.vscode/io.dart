import 'dart:io';

void main(List<String> args) {
  print("Adını Gir -> ");
  String? isim = stdin.readLineSync()!;
  print(isim);

  print("Yaş gir -> ");
  int? yas = int.parse(stdin.readLineSync()!);
  print(yas);
}
