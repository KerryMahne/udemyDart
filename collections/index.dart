class Person {
  String name;

  Person(this.name);
}

void main() {
  var list = [1, 1, 2, 3, 5, 8, 13];
  print(list[0]);
  print(list.length);

  // iteration is classic for loop
  for (int i = 0; i < list.length; i++) {
    print("Index $i, el ${list[i]}");
  }

  var onlyStrings = new List<String>(); // only strings

  // onlyStrings.add(2); can't do since only strings are allowed

  var prvi = new Person("Firsty");
  var drugi = new Person("Segundy");

  var personList = new List<Person>();

  personList.add(prvi);
  personList.add(drugi);

  print("not gonna look okay eh $personList");

  for (int i = 0; i < personList.length; i++) {
    print("Index $i, person name ${personList[i].name}");
  }

  // maps
  var winners = {"first": "Bill", "second": "Gjorgh", "third": "Jocc"};

  print(winners["second"]);

  winners.forEach((k, v) => print("ki $k, velju $v"));

  print(winners.keys);
  print(winners.values);
}
