import 'dart:io';

void main() {
  // Cách tính năm nhuận Dương Lịch
  // Thỏa mãn:
  // Năm dương lịch chia hết cho 4 nhưng không chia hết cho 100.
  // Hoặc chia hết 400

  // Cách tính năm nhuận Âm Lịch
  // Thỏa mãn:
  // Năm nhuận Âm lịch có 13 tháng (được thêm 1 tháng nhuận)
  // Cách tính là lấy năm Dương lịch chia cho 19
  // Nếu số dư bằng một trong các số 0, 3, 6, 9, 11, 14, 17 => năm nhuận Âm lịch

  print("==== KIỂM TRA NĂM NHUẬN THEO ÂM LỊCH HOẶC DƯƠNG LỊCH ====");
  stdout.write('Hãy lựa chọn 1 (Dương lịch) hoặc 2 (Âm lịch) mà bạn muốn: ');
  int select = int.parse(stdin.readLineSync()!);

  if (select == 1) {
    stdout.write('Nhập năm bạn muốn kiểm tra: '); 
    String input = stdin.readLineSync()!;

    if (input.length == 4) {
      int gregorianCalendarYear = int.parse(input);

      if (gregorianCalendarYear >= 1900 &&
          gregorianCalendarYear <= DateTime.now().year) {
        bool result =
            (gregorianCalendarYear % 4 == 0 &&
                gregorianCalendarYear % 100 != 0) ||
            (gregorianCalendarYear % 400 == 0);
        if (result) {
          print('Kết quả: $gregorianCalendarYear là năm nhuận theo lịch dương');
        } else {
          print(
            'Kết quả: $gregorianCalendarYear ko phải năm nhuận theo lịch dương',
          );
        }
      } else {
        print('Năm ko hợp lệ! Vui lòng nhập lại.');
      }
    } else {
      print('Năm phải có đúng 4 chữ số');
    }
  } else if (select == 2) {
    stdout.write('Nhập năm bạn muốn kiểm tra: ');
    String input = stdin.readLineSync()!;

    if (input.length == 4) {
      int lunarCalendarYear = int.parse(input);
      print(lunarCalendarYear % 19);

      if (lunarCalendarYear >= 1900 &&
          lunarCalendarYear <= DateTime.now().year) {
        var result = switch (lunarCalendarYear % 19) {
          0 || 3 || 6 || 9 || 11 || 14 || 17 =>
            'Kết quả: $lunarCalendarYear là năm nhuận theo âm lịch',
          _ =>
            'Kết quả: $lunarCalendarYear ko phải năm nhuận theo âm lịch',
        }; 
        print(result);
      } else {
        print('Năm ko hợp lệ! Vui lòng nhập lại.');
      }
    } else {
      print('Năm phải có đúng 4 chữ số');
    }
  } else {
    print('Lựa chọn không hợp lệ');
  }
}
