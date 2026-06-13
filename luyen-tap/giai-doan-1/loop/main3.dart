import 'dart:io';

void main() {
  // i: đại diện cho số dòng
  // j: đại diện cho số ngôi sao

  // In tam giác 
  int n = 5;
  for (var i = 1; i <= n; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write('*');
    }
    print('');
  }
  print('');
  // In tam giác ngược
  for (var i = 1; i <= n; i++) {
    for (var j = n; j >= i; j--) {
      stdout.write('*');
    }
    print('');
  }
}