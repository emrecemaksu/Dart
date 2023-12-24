// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {}

//Aeger Singleton Yapısı
class ProductConfig {
  static final instance = ProductConfig._('dskfgh');
  final String apiKey;
  ProductConfig._(this.apiKey);
}

//Lazy Singleton
class ProductLazySingleton {
  static ProductLazySingleton? _productLazySingleton;
  static ProductLazySingleton get productLazySingleton {
    if (_productLazySingleton == null)
      _productLazySingleton = ProductLazySingleton._init();
    return _productLazySingleton!;
  }

  ProductLazySingleton._init();
}
