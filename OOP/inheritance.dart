class Person {
  String name, lastName, nationality;
  int age;

  void introduceSelf() {
    print("Hi I'm $name $lastName");
  }
}

class Bonni extends Person {
  String profession;
  void showProfession() {
    print(profession);
  }

  @override
  void introduceSelf() {
    print("Hi I work as a $profession, my name is $name btw");
  }
}

class Location {
  // overriding constructors
  num lat, lng;

  Location(this.lat, this.lng);
}

class ElevatedLocation extends Location {
  num elevation;
  ElevatedLocation(num lat, num lng, this.elevation)
      : super(lat, lng); // call Location constructor

  @override
  String toString() {
    return "I'm an elevated boi, lat: ${this.lat}, lng: ${this.lng}, and elevation of ${this.elevation}";
  }
}

main() {
  var bonni = new Bonni();
  bonni.name = "test1";
  bonni.profession = "bakerboi";
  bonni.introduceSelf();
  bonni.showProfession();

  var elevated = ElevatedLocation(150, -55.150, 90);

  print("location=${elevated.lat}, ${elevated.lng}, el: ${elevated.elevation}");

  String name = "Testyy";
  // generic Object object = new Object();
  print(name.toString());
  print(
      elevated); // no need to call toString specifically since we have overriden toString()
}
