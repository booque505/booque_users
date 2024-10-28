part of 'food_detail_bloc.dart';

@immutable
sealed class FoodDetailEvent {}

class LevelEvent extends FoodDetailEvent {
  String chosenLevel = "";

  LevelEvent({required this.chosenLevel});
}

class PortionEvent extends FoodDetailEvent {
  String chosenPortion = "";

  PortionEvent({required this.chosenPortion});
}
