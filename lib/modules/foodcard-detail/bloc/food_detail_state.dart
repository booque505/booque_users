part of 'food_detail_bloc.dart';

@immutable
sealed class FoodDetailState {}

final class FoodDetailInitial extends FoodDetailState {
  List<String> levelList = [];
  List<String> portionList = [];
  int amount = 0;
  String? chosenLevel = "";
  String? chosenPortion = "";

  FoodDetailInitial(
      {required this.levelList,
      required this.portionList,
      required this.amount,
      this.chosenLevel,
      this.chosenPortion});

  FoodDetailInitial copyWith(
      {required List<String> levelList,
      required List<String> portionList,
      required int amount,
      String? chosenLevel,
      String? chosenPortion}) {
    return FoodDetailInitial(
        levelList: levelList,
        portionList: portionList,
        amount: amount,
        chosenLevel: chosenLevel,
        chosenPortion: chosenPortion);
  }
}
