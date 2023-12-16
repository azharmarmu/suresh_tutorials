class A {
  String name = 'Alex';

  String getName() {
    return name;
  }
}

class B extends A {
  int property1 = 1;
}


main() {
  A objA = A();
  B objB = B();

  print(objB.getName());
}
