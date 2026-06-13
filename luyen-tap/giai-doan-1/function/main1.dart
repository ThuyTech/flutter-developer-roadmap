// Hàm tính giai thừa
int factorial(int n) {
  if (n == 1 || n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int n = 3;
  int result = factorial(n);
  print('Giai thừa của $n! = $result');
}