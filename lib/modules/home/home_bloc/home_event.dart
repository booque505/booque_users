part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class ChangeTitletoSearch extends HomeEvent {
  final bool isSearch;

  ChangeTitletoSearch({required this.isSearch});
}

class ChangeFilterChip extends HomeEvent {
  final String? chosenFilter;

  ChangeFilterChip({
    this.chosenFilter,
  });
}
