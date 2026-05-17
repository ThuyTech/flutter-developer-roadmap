// Bài 1: Khai báo biến và hằng số
/*
Trong Dart, bạn có thể khai báo biến và hằng số như sau:
- Sử dụng từ khóa `var` -> suy luận ra kiểu dữ liệu tự động.
- Khai báo kiểu dữ liệu cụ thể (ví dụ: `String`, `int`, `double`, v.v.) -> giúp tăng tính rõ ràng và an toàn về kiểu dữ liệu.
- Sử dụng từ khóa `final` -> biến final chỉ gán 1 lần duy nhất tại thời gian chạy (run-time) và ko thể thay đổi giá trị sau khi đã gán.
- Sử dụng từ khóa `const` -> biến const là hằng số tại thời gian biên dịch (compile-time) và ko thể thay đổi giá trị
*/

/*
Null Safety dùng để: (dùng: ?)
- tránh lỗi null
- hạn chế app bị crash do lỗi null
- giúp code an toàn hơn

Null Safety có 2 loại:
- Non-nullable: biến không thể nhận giá trị null, phải được khởi tạo khi khai báo.
- Nullable: biến có thể nhận giá trị null, được khai báo bằng cách thêm dấu hỏi (?) sau kiểu dữ liệu.

Ví dụ:
String name = 'Trang'; => Non-nullable, không thể nhận giá trị null
String? email = null; => Nullable, có thể nhận giá trị null
*/

/*
Late variable là:
- Biến được khai báo với từ khóa `late` cho phép bạn trì hoãn việc khởi tạo biến cho đến khi nó được sử dụng lần đầu tiên.
- Dùng `late`: cho phép khai báo trước và gán giá trị sau
*/


// String a; // Chương trình yêu cầu biến `a` phải có giá trị ngay ở ngoài hàm main
late String description;

// Hàm main là hàm bắt buộc yêu cầu trong mỗi chương trình của Dart, nơi mà chương trình sẽ bắt đầu thực thi.
void main() {
  // a. Sử dụng từ khóa `var`
  var name = 'Trang';
  var age = 24;
  var height = 1.65;
  var weight = '55kg';

  // b. Khai báo kiểu dữ liệu cụ thể
  String city = 'Hà Nội';
  int yearOfBirth = 2002;
  double salary = 6000.1;

  // c. Sử dụng từ khóa `final`
  final String country = 'Việt Nam';

  // d. Sử dụng từ khóa `const`
  const double pi = 3.14159;
  const String gender = 'Nữ';

  // e. Sử dụng Null Safety
  // String local; // Lỗi: biến `local` phải được khởi tạo ngay khi khai báo
  String? email = null;
  String? phoneNumber = '0123456789';

  // f. Sử dụng Late variable
  description = 'Đây là một biến late được khởi tạo sau khi khai báo.';

  // In ra các biến và hằng số
  print('Name: $name');
  print('Age: $age');
  print('Height: $height');
  print('Weight: $weight');
  print('Gender: $gender');
  print('City: $city');
  print('Year of Birth: $yearOfBirth');
  print('Salary: $salary');
  print('Country: $country');
  print('PI: $pi');
  // print('Local: $local');
  print('Email: $email');
  print('Phone Number: $phoneNumber');
  print('Description: $description');
}
