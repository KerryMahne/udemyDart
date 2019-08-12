abstract class Animal {
  // interface
  void breathe(); // the concept exists, but not implemented yet

  void makeNoise() {
    print("Generic animal noises intensify");
  }
}

abstract class IsFunny {
  void makePeopleLaugh();
}

class Comedian extends Person implements IsFunny {
  Comedian(String name, String nationality) : super(name, nationality);

  @override
  void makePeopleLaugh() {
    print("So a horse walks into a bar and orders...");
  }
}

class Person implements Animal {
  String name, nationality;

  Person(this.name, this.nationality);

  @override
  void breathe() {
    print("Hwiii hwuuu *nose noises*");
  }

  @override
  void makeNoise() {
    print("YAAAAAAAARGH ME MAD!");
  }

  @override
  String toString() => "$name $nationality";
}

void main() {
  // can't do var animal = new Animal();
  var jenko = new Person("Jenko", "Chad");
  jenko.breathe();
  jenko.makeNoise();
  print(jenko);

  var smeshko = Comedian("borko", "Barchan");
  print(smeshko);
  smeshko.makePeopleLaugh();
  smeshko.makeNoise();
}
