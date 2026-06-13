import 'dart:io';

void main() {
  /*
  Xếp loại học lực đại học (GPA) tại Việt Nam
  Xuất sắc: 3.60 - 4.00 (Thang điểm 10: 9.0 - 10.0)
  Giỏi: 3.20 - 3.59 (Thang điểm 10: 8.0 - 8.9)
  Khá: 2.50 - 3.19 (Thang điểm 10: 7.0 - 7.9)
  Trung bình: 2.00 - 2.49 (Thang điểm 10: 5.0 - 6.9)
  Yếu / Kém: Dưới 2.00
  */

  stdout.write('Bạn muốn nhập theo thang điểm 4 hay 10 (A || B): ');
  String select = stdin.readLineSync()!;

  String rate;
  if (select == 'A') {
    stdout.write('Nhập điểm GPA (theo thang điểm 4) của bạn: ');
    double gpa = double.parse(stdin.readLineSync()!);

    if (gpa < 2.0) {
      rate = 'yếu';
    } else if (gpa <= 2.49) {
      rate = 'trung bình';
    } else if (gpa <= 3.19) {
      rate = 'khá';
    } else if (gpa <= 3.59) {
      rate = 'giỏi';
    } else {
      rate = 'xuất sắc';
    }
  } else if (select == 'B') {
    stdout.write('Nhập điểm GPA (theo thang điểm 10) của bạn: ');
    double gpa = double.parse(stdin.readLineSync()!);

    if (gpa < 5.0) {
      rate = 'yếu';
    } else if (gpa <= 6.9) {
      rate = 'trung bình';
    } else if (gpa <= 7.9) {
      rate = 'khá';
    } else if (gpa <= 8.9) {
      rate = 'giỏi';
    } else {
      rate = 'xuất sắc';
    }
  } else {
    rate = 'Lựa chọn không hợp lệ';
  }

  print('Bạn thuộc xếp loại $rate');
}
