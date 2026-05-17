// * Các kiểu dữ liệu cơ bản trong Dart:
// + Numbers (int, double)
// + Strings (String)
// + Booleans (bool)
// + Records ((value1, value2))
// + Functions (Function)
// + Lists (List, also known as arrays)
// + Sets (Set)
// + Maps (Map)
// + Runes (Runes; often replaced by the characters API)
// + Symbols (Symbol)
// + The value null (Null)

// * Các kiểu dữ liệu đặc biệt trong Dart:
// + Object: The superclass of all Dart classes except Null.
// + Enum: The superclass of all enums.
// + Future and Stream: Used in asynchronous programming.
// + Iterable: Used in for-in loops and in synchronous generator functions.
// + Never: Indicates that an expression can never successfully finish evaluating. Most often used for functions that always throw an exception.
// + dynamic: Indicates that you want to disable static checking. Usually you should use Object or Object? instead.
// + void: Indicates that a value is never used. Often used as a return type.

void main() {
  // Numbers
  int age = 30;
  double height = 1.75;

  // Strings
  String name = 'Alice';

  // Booleans
  bool isStudent = true;

  // Records
  ({String name, int age}) person = (name: 'Bob', age: 25);

  // Functions
  Function greet = (String name) => 'Hello, $name!';

  // Lists
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // Sets
  Set<int> uniqueNumbers = {1, 2, 3};

  // Maps
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};

  // Runes
  Runes heart = Runes('\u2665');

  // Symbols
  Symbol symbolName = #mySymbol;

  // Null value
  String? nullableString = null;

  print('Age: $age');
  print('Height: $height');
  print('Name: $name');
  print('Is Student: $isStudent');
  print('Person: ${person.name}, ${person.age}');
  print(greet('Charlie'));
  print('Fruits: $fruits');
  print('Unique Numbers: $uniqueNumbers');
  print('Scores: $scores');
  print('Heart: $heart');
  print('Symbol Name: $symbolName');
  print('Nullable String: $nullableString');
}
