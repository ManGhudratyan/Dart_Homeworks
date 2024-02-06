import 'dart:math';
import 'dart:io';

class Shape {
  double calcArea() {
    return 0;
  }

  double calcPerimeter() {
    return 0;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle(this.length, this.width);

  @override
  double calcArea() {
    double area = length * width;
    return area;
  }

  @override
  double calcPerimeter() {
    double perimeter = 2 * (length + width);
    return perimeter;
  }
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calcArea() {
    double area = pi * radius * radius;
    return area;
  }

  @override
  double calcPerimeter() {
    double perimeter = 2 * pi * radius;
    return perimeter;
  }
}

void main() {
  stdout.write("Please write rectangle length: ");
  double? rectLength = double.tryParse(stdin.readLineSync()!);
  stdout.write("Please write rectangle width: ");
  double? rectWidth = double.tryParse(stdin.readLineSync()!);

  if (rectLength != null && rectWidth != null) {
    Rectangle rectangle = Rectangle(rectLength, rectWidth);
    print("Rectangle area is equal to: ${rectangle.calcArea()}");
    print("Rectangle perimeter is equal to: ${rectangle.calcPerimeter()}");
  }

  stdout.write("Please write circle radius: ");
  double? circleRadius = double.tryParse(stdin.readLineSync()!);
  
  if (circleRadius != null) {
    Circle circle = Circle(circleRadius);
    print("Circle area is equal to: ${circle.calcArea()}");
    print("Circle perimeter is equal to: ${circle.calcPerimeter()}");
  }
}