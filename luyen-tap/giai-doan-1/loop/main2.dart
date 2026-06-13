import 'dart:io';

void main() {
  stdout.write('Nhập số n: ');
  int n = int.parse(stdin.readLineSync()!);

  int sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }

  print('Tổng từ 1 -> $n bằng: $sum');
}
