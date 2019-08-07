class Microphone {
  // instance/member variables
  String name;
  String color;
  int model = 15; // default value

  // constructors - Java like
  /*
  Microphone(String name, String color, int model) {
    this.name = name;
    this.color = color;
    this.model = model;
  }
  */

  // syntactic sugar, equal to the one up
  Microphone(this.name, this.color, this.model);

  // Named constructors
  Microphone.initialize() {
    name = "Salotka";
    model = 69;
  }

  //getters and setters
  String get getName => name;
  set setName(String val) => name = val;

  // methods
  void turnOn() {
    print("$name is turned on ( ͡° ͜ʖ ͡°)!");
  }

  int modelNumber() => model;
}

main() {
  // classes
  var mic = new Microphone("testko", "red", 154);
  mic.model = 666; // the override
  /* without a constructor - default:
  mic.name = "testko";
  mic.color = "red";
  mic.model = 154;
  */

  print(mic); // Instance of 'Microphone', use dots for specific props
  mic.turnOn();
  print(mic.modelNumber());

  var mic2 = Microphone.initialize();
  print(mic2.model);
  // print(mic2.color); // null

  mic2.setName = "SHalothka";
  print(mic2.getName);
}
