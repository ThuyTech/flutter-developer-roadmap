import 'dart:io';

void main() {
  int numA, numB;
  stdout.write('Nhập số thứ nhất: ');
  numA = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập số thứ hai: ');
  numB = int.parse(stdin.readLineSync()!);

  
  stdout.write('Chọn phép tính bạn muốn: ');
  String select = stdin.readLineSync()!;

  int? result;
  switch (select) {
    case '+':
      result = numA + numB;
      break;
    case '-':
      result = numA - numB;
      break;
    case '*':
      result = numA * numB;
      break;
    case '/':
      result = numA ~/ numB;
      break;
    default:
      print('Lựa chọn ko hợp lệ');
      break;
  }

  print('Kết quả: $result');
}