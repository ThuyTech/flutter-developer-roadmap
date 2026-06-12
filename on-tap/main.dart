import 'dart:math';

class Point {
  double x, y;

  Point({required this.x, required this.y});

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Rectangle {
  double left, top, width, height;
  late double _z;

  Rectangle({
    required this.left,
    required this.top,
    required this.width,
    required this.height
  });

  double get z => _z;
  set z(double value) => _z = value; 
}

class MyMath {
  static const PI = 3.14;
  static exponential(int x) => x * x;
}


void main() {
  // Khởi tạo đối tượng
  Point p1 = Point(x: 2, y: 3);
  Point p2 = Point(x: 1, y: 5);

  double d = p1.distanceTo(p2);
  print(d.toStringAsFixed(2));

  // Khởi tạo đối tượng Rectangle
  Rectangle r1 = Rectangle(left: 10, top: 12, width: 20, height: 30);
  r1.z = 100;
  print(r1.z);

  // Truy cập thuộc tính và phương thức của MyMath
  print(MyMath.PI);
  print(MyMath.exponential(3));
}
