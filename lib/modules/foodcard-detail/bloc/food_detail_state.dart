part of 'food_detail_bloc.dart';

@immutable
sealed class FoodDetailState {}

final class FoodDetailInitial extends FoodDetailState {
  List<String> levelList = [];
  List<String> portionList = [];
  String? chosenLevel = "";
  String? chosenPortion = "";

  FoodDetailInitial(
      {required this.levelList,
      required this.portionList,
      this.chosenLevel,
      this.chosenPortion});

  FoodDetailInitial copyWith(
      {required List<String> levelList,
      required List<String> portionList,
      String? chosenLevel,
      String? chosenPortion}) {
    return FoodDetailInitial(
        levelList: levelList,
        portionList: portionList,
        chosenLevel: chosenLevel,
        chosenPortion: chosenPortion);
  }
}
