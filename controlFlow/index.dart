import 'tmp/importMe.dart' as importedBoi;

chainyBoi() {
  // if nothing is put before it's automatically considered a void
  print("oof ouch the chains");
}

doSomething() {
  print("I print boi");
  chainyBoi();
}

String uwuName(String name) {
  return "$name \\UwU/";
}

String nameTo2008MSN(String name) => "$name Q.Q :3";

String greetTheMan(String name, String lastName, [int age]) {
  // optional args are wrapped into square brackets
  String finalResult = "$name $lastName";
  if (age == null) {
    finalResult = "$finalResult of ages unknown!";
  } else {
    finalResult = "$finalResult of age $age";
  }
  return finalResult;
}

// Scope
var globalBoi = "MR WORLDWIDEEEE";

void main() {
  // as, is & is!
  int number = 34;
  print("${number is String}, ${number is! String}"); // typing
  // ifs n stuff are basically the same, can also be single line ifs a la JS

  // Logical operators !, ||, && - the standard bois

  // For loops - standard
  /*
  for (int i = 0; i < 10; i++) {
    print("hjello $i");
    if (i % 2 == 0) {
      print("The swd of i");
    }
  }
  */
  // while, do while and break are standard shizzle

  // switch
  int age = 18;
  switch (age) {
    case 19:
      print("GO drinnc boi");
      break;
    case 20:
      print("drincc drincc man");
      break;
    default:
      print("no drincc for u");
      break;
  }

  // Functions
  doSomething();
  print(importedBoi.meaningOfLife());

  // function types
  String uwuedName = uwuName("Boyeeee");
  print("What I've done $uwuedName");

  // => expressions basically implicit return
  String usernameMSN = nameTo2008MSN("Djancho");
  print("TIme machine complete $usernameMSN");

  //args
  print(greetTheMan("Janko", "Panko"));
  print(greetTheMan("Mojca", "Pojca", 21));

  //scope
  globalBoi = "$globalBoi!!!";
  print("Is it a bird is it a plane? No, it's $globalBoi");
  innerFunction() {
    var outOfYourScopeMain = "test";
    print("shh we sneaky here $globalBoi");
  }

  //print(outOfYourScopeMain); ain't gonna fly because scoping

  innerFunction();
}
