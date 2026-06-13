import 'dart:io';

void main() {
  int length, width, rectangle;

  stdout.write('Nhập chiều dài: ');
  length = int.parse(stdin.readLineSync()!);
  stdout.write('Nhập chiều rộng: ');
  width = int.parse(stdin.readLineSync()!);

  rectangle = length * width;
  print('Diện tích hình chữ nhật là: $rectangle cm2');
}