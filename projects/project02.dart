import 'dart:io';

// Hàm nhập dữ liệu
void input(String text) {
  stdout.write(text);
}

// Hàm nhập lựa chọn số
int? inputNumber(String text) {
  input(text);
  return int.tryParse(stdin.readLineSync() ?? '');
}

// Hàm show menu
void showMenu() {
  print('===== MÁY TÍNH MINI =====');
  print('1. Cộng');
  print('2. Trừ');
  print('3. Nhân');
  print('4. Chia');
  print('5. Thoát');
}

void main() {
  // ====== MINI PROJECT: MÁY TÍNH MINI ======

  while (true) {
    // Đầu tiên: Hiển thị menu
    showMenu();

    // Sau đó: Nhập lựa chọn của người dùng
    int? choice = inputNumber('Nhập lựa chọn của bạn (1-5): ');

    // Cuối cùng: Thực hiện phép tính dựa trên lựa chọn
    if (choice != null && choice >= 1 && choice <= 4) {
      int? num1 = inputNumber('Nhập số thứ nhất: ');
      int? num2 = inputNumber('Nhập số thứ hai: ');

      if (num1 != null && num2 != null) {
        switch (choice) {
          case 1:
            print('Kết quả: ${num1 + num2}');
            break;
          case 2:
            print('Kết quả: ${num1 - num2}');
            break;
          case 3:
            print('Kết quả: ${num1 * num2}');
            break;
          case 4:
            if (num2 != 0) {
              print('Kết quả: ${num1 / num2}');
            } else {
              print('Lỗi: Không thể chia cho 0');
            }
            break;
        }
      } else {
        print('Lỗi: Vui lòng nhập số hợp lệ');
      }
    } else if (choice == 5) {
      print('Thoát chương trình. Hẹn gặp lại!');
      break;
    } else {
      print('Lựa chọn không hợp lệ. Vui lòng chọn từ 1 đến 5.');
    }
  }
}
