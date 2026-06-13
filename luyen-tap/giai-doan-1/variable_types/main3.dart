import 'dart:io';

void main() {
  // Công thức tính: °F = (°C × 1,8) + 32
  double doC, doF;

  stdout.write('Nhập độ C: ');
  doC = double.parse(stdin.readLineSync()!);

  doF = doC * 1.8 + 32; 
  print('$doC°C chuyển thành ${doF.toStringAsFixed(0)}°F');
}