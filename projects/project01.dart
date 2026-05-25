// Khai báo thư viên dart:io
import 'dart:io';

// Hàm nhập dữ liệu cho sinh viên
void inputStudent(String text) {
  stdout.write(text);
}

void main() {
  // ====== CHƯƠNG TRÌNH QUẢN LÝ THÔNG TIN SINH VIÊN ======
  // Nhập tên, tuổi, điểm GPA của sinh viên
  inputStudent('Nhập tên sinh viên: ');
  String name = stdin.readLineSync() ?? '';
  inputStudent('Nhập tuổi sinh viên: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');
  inputStudent('Nhập điểm GPA sinh viên: ');
  double? gpa = double.tryParse(stdin.readLineSync() ?? '');

  // Hiển thị thông tin sinh viên
  print('\n===== Thông tin sinh viên =====');
  print('Tên: ${name.isEmpty == true ? 'Tên để trống' : name}');
  print('Tuổi: ${age ?? 'Tuổi không hợp lệ'}');
  print('Điểm GPA: ${gpa ?? 'Điểm GPA không hợp lệ'}');
}