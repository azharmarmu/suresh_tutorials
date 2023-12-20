abstract class Father {
  void method1();
}

class Mother {
  void method1() {
    //mother logic
  }
}

class Child implements Father, Mother {
  @override
  void method1() {
    // Own Logic
  }
}



main(){

  Father obj  = Child();
  Mother objM = Mother();

}