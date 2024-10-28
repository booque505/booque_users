part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

class HomeInitial extends HomeState {
  final bool isSearch;
  final String? chosenFilter;
  final List<String> chosenListFilter;

  HomeInitial(
      {required this.isSearch,
      this.chosenFilter,
      required this.chosenListFilter });

  HomeInitial copyWith(
      {required bool isSearch,
      String? chosenFilter,
      List<String>? chosenListFilter}) {
    return HomeInitial(
        isSearch: isSearch,
        chosenFilter: chosenFilter,
        chosenListFilter: chosenListFilter ?? this.chosenListFilter);
  }
}
