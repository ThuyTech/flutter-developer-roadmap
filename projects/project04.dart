import 'dart:io';

// ===== Hàm nhập chuỗi =====
String input(String text) {
  stdout.write(text);
  return stdin.readLineSync() ?? '';
}

// ===== Hàm nhập năm sinh =====
int inputBirthYear(String text) {
  while (true) {
    stdout.write(text);
    int? year = int.tryParse(stdin.readLineSync() ?? '');

    int currentYear = DateTime.now().year;
    if (year != null && year > 1900 && year <= currentYear) {
      return year;
    }

    print('-> Năm sinh không hợp lệ. Vui lòng nhập lại!');
  }
}

// ===== Hàm nhập điểm =====
double inputScore(String text) {
  while (true) {
    stdout.write(text);
    double? score = double.tryParse(stdin.readLineSync() ?? '');

    if (score != null && score >= 0 && score <= 10) {
      return score;
    }

    print('-> Điểm không hợp lệ. Vui lòng nhập lại!');
  }
}

// ===== Hiển thị menu =====
void showMenu() {
  print('\n===== QUẢN LÝ ĐIỂM HỌC SINH =====');
  print('1. Nhập thông tin học sinh');
  print('2. Tính điểm trung bình');
  print('3. Xếp loại học sinh');
  print('4. In thông tin học sinh');
  print('5. Thoát');
}

// ===== Biến lưu thông tin học sinh =====
String name = '';
int birthYear = 0;
double mathScore = 0;
double literatureScore = 0;
double englishScore = 0;

// ===== Nhập thông tin học sinh =====
void inputStudentInfo() {
  print('\n===== NHẬP THÔNG TIN HỌC SINH =====');

  name = input('Nhập tên học sinh: ');
  birthYear = inputBirthYear('Nhập năm sinh: ');

  mathScore = inputScore('Nhập điểm Toán: ');
  literatureScore = inputScore('Nhập điểm Văn: ');
  englishScore = inputScore('Nhập điểm Anh: ');

  print('-> Nhập thông tin thành công!');
}

// ===== Tính điểm trung bình =====
double calculateAverage() {
  return (mathScore + literatureScore + englishScore) / 3;
}

// ===== Xếp loại =====
String gradeStudent() {
  double average = calculateAverage();

  if (average >= 9) {
    return 'Xuất sắc';
  } else if (average >= 8) {
    return 'Giỏi';
  } else if (average >= 6.5) {
    return 'Khá';
  } else if (average >= 5) {
    return 'Trung bình';
  } else {
    return 'Yếu';
  }
}

// ===== In thông tin học sinh =====
void showStudentInfo() {
  int age = DateTime.now().year - birthYear;

  print('\n===== THÔNG TIN HỌC SINH =====');
  print('- Tên: $name');
  print('- Năm sinh: $birthYear');
  print('- Tuổi: $age');
  print('- Điểm Toán: $mathScore');
  print('- Điểm Văn: $literatureScore');
  print('- Điểm Anh: $englishScore');
  print('- Điểm trung bình: ${calculateAverage().toStringAsFixed(1)} điểm');
  print('- Xếp loại: ${gradeStudent()}');
}

// ===== Kiểm tra đã nhập dữ liệu chưa =====
bool hasStudentInfo() {
  return name.isNotEmpty;
}

// ===== Main =====
void main() {
  while (true) {
    showMenu();
    String choice = input('Chọn chức năng: ');

    switch (choice) {
      case '1':
        inputStudentInfo();
        break;

      case '2':
        if (!hasStudentInfo()) {
          print('-> Vui lòng nhập thông tin học sinh trước!');
        } else {
          print(
            '-> Điểm trung bình: ${calculateAverage().toStringAsFixed(1)} điểm',
          );
        }
        break;

      case '3':
        if (!hasStudentInfo()) {
          print('-> Vui lòng nhập thông tin học sinh trước!');
        } else {
          print('-> Xếp loại: ${gradeStudent()}');
        }
        break;

      case '4':
        if (!hasStudentInfo()) {
          print('-> Vui lòng nhập thông tin học sinh trước!');
        } else {
          showStudentInfo();
        }
        break;

      case '5':
        print('-> Kết thúc chương trình!');
        return;

      default:
        print('-> Lựa chọn không hợp lệ!');
    }
  }
}