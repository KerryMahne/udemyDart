void main() {
  /*
     Variables can be strings, numbers, booleans, lists, maps ...
  */
  var test = "test"; // dynamic
  String stringyBoi = "Not dynamic son";
  // stringyBoi = 2; aoin't gonna fly since it's static typed
  // test = 1.2; gonna work since it's JS-like var
  print("First ${test}, second $stringyBoi");

  // ints & doubles, num is a generic number
  num age = 13;
  age = 13.5;
  print(age);

  int age2 = 16;
  // age2 = 16.5; ain't gonna fly since it's a double

  // bools
  bool trueBoi = true;
  bool falseBoi = false;

  /*
     const and final
     const - constant at compile time
     final - the var will always be constant
  */
  const pi = 3.14;
  // pi = 3.52; nope
  final pi2 = 3.142;
  // https://stackoverflow.com/questions/50431055/what-is-the-difference-in-between-const-and-final-keyword-in-dart

  // concats
  String name = "Janko";
  String lastName = "Shmorko";
  int theAge = 11;
  // braces are neccessary for calling methods and stuff
  print("$name ${lastName.toUpperCase()} of age $theAge approves!");

  // operators are the classic boys +, -, *, /, %
  /*
     equality and operational are again classics ==, !=, ...
  */
}
