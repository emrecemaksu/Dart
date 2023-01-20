void main(List<String> args) {
  Map<String, dynamic> bosMap = Map();
  var digermap = <String, dynamic>{"emre": "insan"};
  Map<String, dynamic> bilgiler = {
    "ad": "emre",
    "yas": 25,
    "dogum yeri": "istanbul",
    "bekar": true
  };
  for (var item in bilgiler.keys) {
    print(bilgiler[item]);
  }
  for (var item in bilgiler.values) {
    print(item);
  }
  for (var item in bilgiler.entries) {
    print("Anahtar " +
        item.key.toString() +
        " : " +
        'Değer ' +
        item.value.toString());
  }
}

//Mapin entryleri key ve value şeklinde çalışır.