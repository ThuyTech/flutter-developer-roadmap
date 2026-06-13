// hàm tìm số lớn nhất
void findMaxNumber(int a, int b) {
  int max = (a > b) ? a : b;
  print('Số lớn nhất trong 2 số $a và $b là: $max');
}

void findMaxListNumber(List<int> numbers) {
  int max = numbers[0];

  for (var number in numbers) {
    if (number > max) {
      max = number;
    }
  }

  print('Số lớn nhất trong dãy ${numbers} là: $max');
}


void main() {
  findMaxNumber(62, 32);
  findMaxListNumber([23, 47, 11, 55, 29]);
}