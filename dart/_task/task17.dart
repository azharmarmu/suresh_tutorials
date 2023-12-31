/**
 * 
 * Create Super/Base class called Shape which has properties like(methods)=> area, perimeter , fields pi.
 * 
 * Create Derived class as  Square and Circle and Override those methods
 * 
 */

import 'dart:math' as math;

class Shape {
  final double pi = 22 / 7;

  num area() {
    return 0;
  }

  num perimeter() {
    return 0;
  }
}

class Square extends Shape {
  final side; //data members / fields

  Square(this.side); // constructor

  @override //member function / method
  num area() => side * side;

  @override
  num perimeter() {
    return 4 * side;
  }
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
