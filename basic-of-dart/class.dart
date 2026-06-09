// Class là một bản thiết kế cho đối tượng
// Object là một đối tượng đc tạo từ class

// -------------------------------------------

// Constructor là một hàm được gọi khi tạo object
// Một class có thể có nhiều constructor.
// Có 4 constructor:
// 1. Generative Constructor (Constructor thường)
// 2. Named Constructor -> Dùng khi muốn tạo nhiều cách khởi tạo object.
// 3. Constant Constructor (const) -> Dùng cho object không thay đổi.
// 4. Factory Constructor -> Không nhất thiết tạo object mới mỗi lần gọi.

// -------------------------------------------

// Getter/Setter
// Mục đích của Getter/Setter là kiểm soát việc đọc và ghi dữ liệu trong object.
// Hàm get dùng để đọc dữ liệu
// Hàm set dùng để ghi dữ liệu
// Getter/Setter thủ công chỉ dùng khi:
// - Kiểm tra dữ liệu
// - Tính toán dữ liệu
// - Ẩn dữ liệu nội bộ (_private)

// -------------------------------------------

// Các tính chất của OOP:
// 1. Encapsulation (tính đóng gói)
// Là tính chất giúp che giấu dữ liệu của một đối tượng và hạn chế việc truy cập trực tiếp từ bên ngoài
// Cách thực hiện: dùng dấu _ cho trước tên biến
// Tác dụng: Bảo vệ dữ liệu không bị thay đổi ngoài ý muốn. Bạn có thể kiểm soát việc đọc/ghi dữ liệu thông qua các hàm getter và setter.

// 2. Inheritance (tính kế thừa)
// là tính chất cho phép sub-class kế thừa toàn bộ properties và methods của supper-class, giúp tránh việc phải viết lại mã nguồn
// Cách thực hiện: dùng từ khóa extends. Dart chỉ hỗ trợ đơn kế thừa
// Tác dụng: tăng khả năng sử dụng mã, dễ dàng phân cấp, mở rộng các đối tượng trong hệ thống.

// 3. Polymorphism (tính đa hình)
// là tính chất cho phép các class khác nhau có thể gọi cùng một phương thức, nhưng cách xử lý bên trong sẽ khác nhau
// Cách thực hiện: dùng từ khóa @override
// Tác dụng: giúp mã nguồn uyển chuyển hơn, có thể gọi cùng một phương thức chung cho một nhóm đối tượng mà ko cần quan tâm đến kiểu đối tượng cụ thể.

// 4. Tính trừu tượng
// là tính chất tập trung vào các đặc điểm cốt lõi của đối tượng và bỏ qua các chi tiết triển khai bên trong.
// Cách thực hiện: dùng từ khóa abstract, các phương thức bên trong abstract class ko có phần thân, và sub-class là nơi triển khai chi tiết
// Tác dụng: cung cấp bộ khung chuẩn để cho lập trình viên dựa vào đó phát triển, giảm sự phụ thuộc và cấu trúc lại hệ thống dễ dàng

abstract class Student {
  // Properties
  String _name;
  int _age;

  // Method study()
  study() {
    print('Hoc sinh $_name dang hoc');
  }

  // Constructor (bản chất)
  // Student(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  // Constructor (mình sẽ viết cách ngắn gọn)
  Student(this._name, this._age);

  // Constructor có tên (Named Constructor)
  // c1:
  Student.guest() : _name = 'Guest', _age = 0;

  // c2:
  // Student.guest() {
  //   name = 'Guest';
  //   age = 0;
  // }

  // c3:
  // Student({required this._name, required this._age});

  // Hàm get name và age
  String get getName => _name;
  int get getAge => _age;

  // Hàm set name và age
  set setName(String name) {
    _name = name;
  }

  set setAge(int age) {
    if (age >= 0) {
      _age = age;
    }
  }

  // Hàm info
  void info();
}

class StudentMath extends Student {
  String type;
  StudentMath(String name, int age, {this.type = 'student-math'})
    : super(name, age);

  void showHello() {
    print('Hello');
  }

  // Vừa polymorphism và abstract
  @override
  void info() {
    print('I am ${this._name}, ${this._age} years old, ${this.type}');
  }
}


// VD1
// void main() {
//   var st1 = Student();
//   var st2 = st1;

//   st1.name = 'Trung';
//   st2.name = 'Hao';
//   st1.name = 'Long';
//   st2.name = 'Bao';

//   print('st1: ${st1.name}');
// }
//   print('st2: ${st2.name}');

// VD2
void main() {
  var st1 = StudentMath('Johnny', 23, type: 'student');
  var st2 = StudentMath('Barry', 24);
  // var st3 = StudentMath.guest();

  print('---- Giá trị ban đầu ----');
  print('st1: ${st1._name} - ${st1._age}');
  print('st2: ${st2._name} - ${st2._age}');
  // print('st3: ${st3._name} - ${st3._age}');

  st1.info();
  st2.info();

  st1.setAge = 21;
  st2.setName = 'Kevin';
  // st3.setAge = 19;

  print('---- Giá trị update ----');
  print('st1: ${st1._name} - ${st1._age}');
  print('st2: ${st2._name} - ${st2._age}');
  // print('st3: ${st3._name} - ${st3._age}');
  st1.info();
  st2.info();

  print('---- Học sinh chuyên toán ----');
  StudentMath stm1 = StudentMath('Rio', 22);
  stm1.showHello();
  print('stm1: ${stm1._name} - ${stm1._age} - ${stm1.type}');
  stm1.info();
}
