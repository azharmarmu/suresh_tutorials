void main() {
  int a = 10; // in-build datatype / natural datatype

  A cusA = A.name1(); //define
  cusA.sumOfTwoNumber();
  cusA.a = 100;
  cusA.sumOfTwoNumber();
}

//custom Datatype //model
class A {
  //A(); //default - constructor
  A(int a, int b); // overriden constructor
  A.name1(); //named constructor


  int a = 10; //data member 
  int b = 20;

  void sumOfTwoNumber(){ //method or member function
    print('sum: ${(a+b)}');
  }
}


//class 
// 1. constructor(overriden, multiple constructor can be created)
// 2. properties => datamember memberfunction/method
// 3. setter and getter