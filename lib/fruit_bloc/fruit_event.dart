import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sembast_tutorial/data/fruit.dart';

@immutable
abstract class FruitEvent extends Equatable {
  FruitEvent([List props = const []]) : super(props);
}

class LoadFruits extends FruitEvent {}

class AddRandomFruit extends FruitEvent {}

class UpdateWithRandomFruit extends FruitEvent {
  final Fruit updatedFruit;

  UpdateWithRandomFruit(this.updatedFruit) : super([updatedFruit]);
}

class DeleteFruit extends FruitEvent {
  final Fruit fruit;

  DeleteFruit(this.fruit) : super([fruit]);
}
