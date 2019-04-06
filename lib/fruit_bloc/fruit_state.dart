import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sembast_tutorial/data/fruit.dart';

@immutable
abstract class FruitState extends Equatable {
  FruitState([List props = const []]) : super(props);
}

class FruitsLoading extends FruitState {}

class FruitsLoaded extends FruitState {
  final List<Fruit> fruits;

  FruitsLoaded(this.fruits) : super([fruits]);
}
