import 'dart:math' as math;

abstract class Shape {
  final double pi = 22 / 7;

  num area();
  num perimeter();
}
// 1. You are restricting to instantiate the object/instance
// 2. Hiding the implementation/value

class Square extends Shape {
  final side; //data members / fields

  Square(this.side);

  @override
  num area() {
    return side * side;
  }

  @override
  num perimeter() {
    return 4 * side;
  } // constructor
}

class Circle extends Shape {
  final radius;

  Circle(this.radius);

  @override
  num area() {
    return pi * math.sqrt(radius);
  }

  @override
  num perimeter() => 2 * pi * radius;
}

void main(List<String> args) {
  Square sqrObj = Square(20);

  print(sqrObj.area());
  print(sqrObj.perimeter());

  Circle cir1Obj = Circle(5);
  print(cir1Obj.area().toStringAsFixed(2));
  print(cir1Obj.perimeter().toStringAsFixed(2));
}
