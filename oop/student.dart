import 'home.dart';
import 'office.dart';
import 'person.dart';

class Student extends Person with Home, Office {
  Student(super.name, super._age, super.address);
  
  @override
  move() {
    // TODO: implement move
    throw UnimplementedError();
  }
}