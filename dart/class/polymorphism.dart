class Parent {
  //parent class or base class or super class

  final name = 'Alex';

  void farmLand() {
    print('Cultivating Rice');
  }
}

class Child extends Parent {
  // child class or derived class
  late int a;
  @override
  void farmLand() {
    print('Adding Drip System: ${super.name}');
  }
}

main() {
  Child obj = Child();

  obj.farmLand();
}
