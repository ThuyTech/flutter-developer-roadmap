// Bài 2: Các toán tử và phép tính cơ bản

/* 
Các toán tử và phép tính cơ bản trong Dart
Trong Dart có nhiều nhóm toán tử quan trọng:
- Toán tử số học: +, -, *, /, %, ~/ (chia lấy phần nguyên)
- Toán tử gán: =, +=, -=, *=, /=, %=, ~/=
- Toán tử so sánh: ==, !=, >, <, >=, <=
- Toán tử logic: &&, ||, !
- Toán tử null safety: ?., ?[]
- Toán tử tăng giảm: ++, --
- Toán tử kiểm tra kiểu dữ liệu: is, as
*/

void main() {
  // ========== Toán tử số học ==========
  int a = 10, b = 3;
  print('--- Toán tử số học ---');
  print('$a + $b = ${a + b}'); // 13
  print('$a - $b = ${a - b}'); // 7
  print('$a * $b = ${a * b}'); // 30
  print('$a / $b = ${a / b}'); // 3.333...
  print('$a % $b = ${a % b}'); // 1 (Chia lấy dư)
  print('$a ~/ $b = ${a ~/ b}'); // 3 (Chia lấy nguyên)

  // ========== Toán tử gán ==========
  print('\n--- Toán tử gán ---');
  int c = 5;
  c += 2; // c = 7
  print('c += 2 => c = $c');
  c -= 1; // c = 6
  print('c -= 1 => c = $c');
  c *= 2; // c = 12
  print('c *= 2 => c = $c');
  c ~/= 3; // c = 4
  print('c ~/= 3 => c = $c');

  // ========== Toán tử so sánh ==========
  print('\n--- Toán tử so sánh ---');
  print('$a == $b: ${a == b}'); // false
  print('$a != $b: ${a != b}'); // true
  print('$a > $b: ${a > b}'); // true
  print('$a < $b: ${a < b}'); // false
  print('$a >= $b: ${a >= b}'); // true
  print('$a <= $b: ${a <= b}'); // false

  // ========== Toán tử logic ==========
  print('\n--- Toán tử logic ---');
  bool x = true, y = false;
  print('x && y: ${x && y}'); // false (AND)
  print('x || y: ${x || y}'); // true  (OR)
  print('!x: ${!x}'); // false (NOT)
  print('!y: ${!y}'); // true

  // ========== Toán tử điều kiện (Ternary) ==========
  print('\n--- Toán tử điều kiện ---');
  int age = 20;
  String status = age >= 18 ? 'Thành niên' : 'Chưa thành niên';
  print('Tuổi $age: $status');

  // ========== Toán tử Null Safety ==========
  print('\n--- Toán tử Null Safety ---');
  String? name;
  print('name?.length: ${name}'); // null
  name = 'Dart';
  print('name?.length: ${name.length}'); // 4

  String? nickname;
  String displayName = nickname ?? 'Anonymous'; // Null coalescing
  print('displayName: $displayName');

  // ========== Toán tử tăng/giảm ==========
  print('\n--- Toán tử tăng/giảm ---');
  int d = 5;
  print('d++ => ${d++}'); // In 5 rồi tăng thành 6
  print('d = $d');
  print('++d => ${++d}'); // Tăng thành 7 rồi in
  print('d = $d');
  print('d-- => ${d--}'); // In 7 rồi giảm thành 6
  print('d = $d');

  // ========== Toán tử kiểm tra & ép kiểu ==========
  print('\n--- Toán tử kiểm tra & ép kiểu ---');
  dynamic value = 'Hello';
  print('value is String: ${value is String}'); // true
  print('value is int: ${value is int}'); // false
  print('value is! int: ${value is! int}'); // true
  print('value as String: ${value as String}'); // Ép kiểu thành String
}
