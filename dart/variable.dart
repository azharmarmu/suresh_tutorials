void main() {
  // syntax:
  // datatype variablName/identifier = value;

  int a = 10; // data definition
  String name = 'Suresh';

  bool isVerfied; // data declaration
  isVerfied = true; // data initializaition // assign

  name = 'Alex'; // re-intialization // re-assign
  //data definition =  data declaration + data Initilization

  num age = 10;

  String firstName = 'Bob';

  var lastName = true;

  dynamic gender = 'Male';

  gender = true;

  print(firstName.runtimeType);

}

//Rules for VariableName/ Identifer
//1. It cannot be a keyword
//2. It cannot start with numbers
//3. It cannot have any special charactes except _ $

//Convention
//1. make sure all identier start a small case
//2. use camel case if required