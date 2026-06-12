abstract class Person {
  String? name;
  int? _age;
  String? address;

  // Constructor mac dinh
  Person(this.name, [this._age, this.address]);

  // Named constructor
  // Person.Vietnam() : name = 'Thuy', age = 0;
  // Person.onlyName(this.name) : age = 0;

  // Getter / Setter
  int? get getAge => _age;
  set setAge(int newAge) => _age = newAge;

  talk() => print('talking....');

  move();
}