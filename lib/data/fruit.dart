import 'package:meta/meta.dart';

class Fruit {
  // Id will be gotten from the database.
  // It's automatically generated & unique for every stored Fruit.
  int id;

  final String name;
  final bool isSweet;

  Fruit({
    @required this.name,
    @required this.isSweet,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isSweet': isSweet,
    };
  }

  static Fruit fromMap(Map<String, dynamic> map) {
    return Fruit(
      name: map['name'],
      isSweet: map['isSweet'],
    );
  }
}
