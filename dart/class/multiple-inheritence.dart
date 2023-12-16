class Father {
  void method() {
    print('I am from father');
  }
}

class Child extends Father {}

void main() {
  Child cObj = Child();

  Father obj2 = Child();

  //Child obj3 = Father(); //this is error

  cObj.method();
}
