import 'parent.dart';

class Child extends Parent {
  // child class or derived class
  late int a;

  @override
  void farmLand() {
    super.farmLand();
    print('Adding Drip System');
  }
}
