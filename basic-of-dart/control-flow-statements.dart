// Có 2 phần chính:
// 1. Câu lệnh branches => "Nếu điều kiện này đúng thì làm gì?"
// Gồm: if, else if, else, switch case
// 2. Câu lệnh loops => "Lặp đi lặp lại một hành động"
// Gồm: for, while, do while
// Các từ khóa quan trọng trong loops:
// - break (thoát khỏi vòng lặp)
// - continue (bỏ qua lần lặp hiện tại và tới lần lặp tiếp theo)

void main() {
  // Ví dụ về câu lệnh branches
  // a. if, else if, else
  int number = -10;
  if (number > 0) {
    print("$number là số dương");
  } else if (number < 0) {
    print("$number là số âm");
  } else {
    print("$number là số không");
  }

  // b. switch case
  int dayOfWeek = 6;
  switch (dayOfWeek) {
    case 2:
      print("Thứ Hai");
      break;
    case 3:
      print("Thứ Ba");
      break;
    case 4:
      print("Thứ Tư");
      break;
    case 5:
      print("Thứ Năm");
      break;
    case 6:
      print("Thứ Sáu");
      break;
    case 7:
      print("Thứ Bảy");
      break;
    case 8:
      print("Chủ Nhật");
      break;
    default:
      print("Ngày không hợp lệ");
  }

  // Ví dụ về câu lệnh loops
  // a. for loop
  for (int i = 0; i < 5; i++) {
    print("Lặp lần thứ $i");
  }

  // b. while loop
  int count = 0;
  while (count < 5) {
    print("Đếm: $count");
    count++;
  }

  // c. do-while loop
  int doCount = 0;
  do {
    print("Đếm trong do-while: $doCount");
    doCount++;
  } while (doCount < 5);
}
