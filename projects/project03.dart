import 'dart:io';
import 'dart:math';

// Khai báo biến cout
late int count = 0;

// Hàm start game
void startGame() {
  print('===== GAME ĐOÁN SỐ =====');
  print('Máy tính đã sinh ra một số ngẫu nhiên từ 1 đến 10.');
  print('Nhiệm vụ của bạn hãy nhập vào một số để đoán.');
  print('Nếu bạn đoán đúng, bạn sẽ chiến thắng!');
  print('Nếu bạn đoán sai, bạn sẽ thua game.');
  print('Hãy bắt đầu trò chơi nào!');
}

// Hàm nhập dữ liệu cho người chơi
void inputGuess(String text) {
  stdout.write(text);
}

// Hàm nhập số đoán của người chơi
int? inputPlayerGuess() {
  inputGuess('Mời bạn nhập số (1-10): ');
  int? guessNumber = int.tryParse(stdin.readLineSync() ?? '');
  if (guessNumber == null || guessNumber < 1 || guessNumber > 10) {
    print('Số bạn nhập không hợp lệ. Vui lòng nhập một số từ 1 đến 10.');
    return null;
  }
  return guessNumber;
}

// Hàm kiểm tra kết quả đoán
bool checkGuess(int playerGuess, int randomNumber) {
  if (playerGuess == randomNumber) {
    print('-> Chúc mừng! Bạn đã đoán đúng!. Số đúng là: $randomNumber!!!');
    return true;
  } else if (playerGuess < randomNumber) {
    print('-> Số bạn đang đoán < số của game!');
    count++;
    print('-> Số lần đoán sai: $count');
  } else if (playerGuess > randomNumber) {
    print('-> Số bạn đang đoán > số của game!');
    count++;
    print('-> Số lần đoán sai: $count');
  }
  return false;
}

void main() {
  // ====== MINI PROJECT: GAME ĐOÁN SỐ ======
  // Máy tính sẽ sinh ra một số ngẫu nhiên từ 1 đến 100
  // Người chơi sẽ nhập vào một số để đoán
  // Nếu người chơi đoán đúng, hiển thị "Chúc mừng! Bạn đã đoán đúng!"
  // Nếu người chơi đoán sai, hiển thị "Rất tiếc! Bạn đã đoán sai! Số đúng là: [số đúng]"

  startGame();
  int randomNumber = Random().nextInt(10) + 1;

  while (true) {
    int? playerGuess = inputPlayerGuess();
    if (playerGuess != null) {
      bool isCorrect = checkGuess(playerGuess, randomNumber);
      if (isCorrect) {
        inputGuess('Bạn có muốn chơi lại không? (y/n): ');
        String answer = stdin.readLineSync()?.toLowerCase() ?? '';
        if (answer == 'y') {
          count = 0;
          randomNumber = Random().nextInt(10) + 1;
          print('-> Trò chơi đã được reset. Hãy bắt đầu lại nào!');
        } else {
          print('-> Cảm ơn bạn đã chơi! Hẹn gặp lại!');
          break;
        }
      } else {
        print('-> Hãy thử lại nhé!');
      }
    }
  }
}
