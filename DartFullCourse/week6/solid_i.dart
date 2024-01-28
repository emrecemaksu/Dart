//! Interfacelerin parçalanması

abstract class IUserOperation implements IUserLocation, IUserLanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void changeLocation();
}

abstract class IUserLanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void changeLocation() {
    print('Locasyon değişti.');
  }
}

void main(List<String> args) {
  final userLocation = UserLocation();
  userLocation.changeLocation();
}
