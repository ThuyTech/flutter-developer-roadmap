import 'dart:io';

void main() {
  stdout.write('Nhập tên của bạn: ');
  String name = stdin.readLineSync()!;
  stdout.write('Nhập tuổi của bạn: ');
  int age = int.parse(stdin.readLineSync()!);

  print('Tên bạn là: $name \nTuổi: $age');
}