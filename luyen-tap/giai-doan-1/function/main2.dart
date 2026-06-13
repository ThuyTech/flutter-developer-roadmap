// hàm kiểm tra số nguyên tố
// số nguyên tố: các số tự nhiên lớn hơn 1 mà chỉ có đúng hai ước số là 1 và chính nó

bool checkPrimeNumbers(int n) {
  if (n <= 1) {
    return false;
  }
  for (var i = 2; i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int n = 25;
  var result = checkPrimeNumbers(n);
  print('Số $n là: ${result ? 'số nguyên tố' : 'ko phải số nguyên tố'}');
}
