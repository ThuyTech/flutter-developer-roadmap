void main() {
  print('==== BẢNG CỬU CHƯƠNG ====');
  for (var i = 2; i <= 9; i++) {
    print('-----------------');
    for (var j = 1; j <= 10; j++) {
      print('$i x $j = ${i * j}');
    }
  }
}
