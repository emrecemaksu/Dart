import 'model/product_config_model.dart';

void main(List<String> args) {
  final new2Product = Product('Deterjan');
  //Nesne üzerinden static olmayanlara erişebiliyorum.
  new2Product.ekleMoney(78);
  final newProduct = Product.money;
  print(newProduct);
  print(Product.cikarMoney(5));
  //Product.compName = 'FR Bank'; Çalışmaz const çünkü.
  SUser user1 = SUser('Emrem', 'Sucuk');
  Product product = Product.emre();
  final product2 = Product.fromUser(user1);
  print(product.productName);
  print(product2.productName);
  ProductConfig.instance.apiKey;
  //Eager Singleton Konusu Singletonlu sınıfı private yaptık. Değer
  //değişimi sadece kendi olduğu field ile sınırlandı.
  //ProductConfig(apiKey: 'sdfsdgf').apiKey;
}

class Product {
  //money e diğer dosyalar dahil her yerden erişebilirim.
  //Öldürmediğim sürece bellekte kalır.
  //Başka yerde null değeri alabilir. Böylece hata verebilir.
  static int money = 10;
  //compName Singleton oldu.
  static const compName = 'DB';
  final String productName;

  Product(this.productName);
  Product.emre([this.productName = 'Emre']);

  //Geriye değer döndüren bir Consturactor factory ile yapılır.
  factory Product.fromUser(SUser user) {
    return Product(user.name);
  }

  //
  int ekleMoney(int myMoney) {
    money = money + myMoney;
    return money;
  }

  static int cikarMoney(int myMoney) {
    money = money - myMoney;
    return money;
  }
}

class SUser {
  final String name;
  final String product;

  SUser(this.name, this.product);
}
