import 'package:navigation1/model/person.dart';

class User extends Person {
  int id;
  String name;

// Constructor
  User(this.id, this.name);

  @override
  void xinchao() {
    print('Xin chào, tôi là $name');
  }

  String toString() {
    return 'id: $id, name: $name';
  }
}