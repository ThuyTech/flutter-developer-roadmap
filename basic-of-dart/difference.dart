void main() {
  // for-in
  var ages = [11, 22, 33];
  for (var age in ages) {
    print('So: $age');
  }

  // collection if, for
  var nationals = ['Vietnam', 'ThaiLand', 'Indonesia'];
  bool isAsia = true;
  var asia = [...nationals, if (isAsia) 'Philipinese'];
  print(asia);

  bool isLogin = false;
  // ignore: dead_code
  var menu = ['Home', if (isLogin) 'Logout' else 'Login'];
  print(menu);

  var names = ['An', 'Bình', 'Lan'];
  var greetings = [for (var name in names) 'Hello $name'];
  print(greetings);

  var numbers = [1, 2, 3, 4, 5];
  var evenNumbers = [
    for (var n in numbers)
      if (n % 2 == 0) n,
  ];
  print(evenNumbers);

  // Pattern Matching (Dart 3)
  // Destructuring List
  var singers = ['Son Tung MTP', 'J97', 'QuanAP'];
  var [a, b, c] = singers;
  print('Singer: $a');
  print('Singer: $b');
  print('Singer: $c');

  // Destructuring Map
  var technology = {'name': 'Dart', 'version': 3};
  var {'name': name, 'version': version} = technology;
  print('Technology $name run version $version');

  // Destructuring Record
  var student = ('Le Thanh Tung', 'nam');
  var (studentName, gender) = student;
  print('StudentName: $studentName || Gender: $gender');

  // Pattern in if-else
  var pair = [10, 30];
  if (pair case [int x, int y]) {
    print('Tọa độ: x=$x, y=$y');
  }

  // Pattern in switch
  var point = (12, 20);
  switch (point) {
    case (10, 20):
      print('Điểm chính xác');
      break;
    case (0, 0):
      print('Gốc tọa độ');
      break;
    default:
      print('Không khớp');
  }

  var statusCode = 404;
  var statusMessage = switch (statusCode) {
    200 => 'Thành công',
    400 || 404 => 'Không tìm thấy hoặc Lỗi yêu cầu',
    >= 500 || <= 599 => 'Lỗi hệ thống',
    _ => 'Mã không hợp lệ',
  };
  print('Status Message: $statusMessage');

  // Pattern với nhiều điều kiện
  var point2 = (5, -2);

  switch (point2) {
    case (int x, int y) when x > 0 && y < 0:
      print('Điểm nằm ở góc phần tư thứ IV');
    case (int x, int y):
      print('Điểm ở vị trí khác: $x, $y');
  }

  // Null Safety (?, ?., ??, ??=, ...?, !)
  // 1. Toán tử ?
  // Cho phép biến có thể nhận giá trị là null
  String? address;
  print('111, $address');

  // 2. Toán tử ?. (Null-aware access)
  // Cho phép bạn truy cập vào thuộc tính hoặc phương thức của một đối tượng chỉ khi đối tượng đó không phải là null.
  // Nếu đối tượng là null, toàn bộ biểu thức sẽ trả về null thay vì gây lỗi ứng dụng
  String? language = 'Dart';
  print('222, ${language?.length}');
  language = null;
  print('222, ${language?.length}');

  // 3. Toán tử ?? (If-null operator)
  // trả về giá trị bên phải khi giá trị bên trái là null
  // trả về giá trị bên trái khi giá trị bên trái ko là null
  String? username;
  String displayName = username ?? 'client';
  print('333, $displayName');

  // 4. Toán tử ??= (Null-aware assignment)
  // Chỉ gán giá trị khi biến đang là null
  // Khi mà biến ko null, thì nó sẽ bỏ qua phép gán
  int? score;
  score ??= 10;
  print('333, $score');
  // score ??= 11;
  // print('333, $score');

  // 5. Toán tử ...?
  // Dùng trong các List, Set hoặc Map.
  // Trải phẳng (spread) các phần tử của một collection vào collection khác, và chỉ thực hiện nếu collection đó khác null.
  List<int>? list1;
  List<int> list2 = [1, 2, ...?list1];
  print('555, $list2');

  int add([int a = 5, int b = 3]) => a + b;
  int result = add(4);
  print('Result: $result');
}
