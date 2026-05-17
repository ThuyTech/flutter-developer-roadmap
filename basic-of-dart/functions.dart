/*
- Dart là một ngôn ngữ lập trình hướng đối tượng, vì vậy các hàm đều là ĐỐI TƯỢNG và có kiểu là Function
- Hàm có thể được gán cho biến hoặc làm đối số cho hàm khác
- Ta cũng có thể gọi một thể hiện (instance) của một lớp Dart như thể nó là một hàm
- Hàm là một khối lệnh dùng để thực hiện nhiệm vụ, tác vụ cụ thể gì đó theo mình muốn, hàm có thể tái sử dụng nhiều lần trong chương trình
*/

/*
- Cách viết 1:
  void functionName() {
    // code
  }
  
- Cách viết 2:
  returnType functionName() {
    // code
    return value;
  }

- Cách viết 3 (Arrow Function):
  returnType functionName() => expression;
*/

void main() {
  // Hàm có thể được gán cho biến
  Function sayHello = () {
    print('Hello, Dart!');
  };
  sayHello(); // Gọi hàm

  // Hàm có thể làm đối số cho hàm khác
  void executeFunction(Function func) {
    func();
  }

  executeFunction(sayHello); // Truyền hàm làm đối số

  // Ví dụ:
  // a. Normal Function
  int a = 10, b = 5;
  int add(int a, int b) {
    return a + b;
  }

  int result = add(a, b);
  print('Result of add($a, $b) = $result'); // 15

  // b. Arrow Function
  int multiply(int a, int b) => a * b;
  int product = multiply(a, b);
  print('Result of multiply($a, $b) = $product'); // 50

  String createFullName(String? firstName, String? lastName) => '$firstName $lastName';
  String fullName = createFullName('Trần', 'Phương');
  print('Full name: $fullName'); // Trần Phương
}
