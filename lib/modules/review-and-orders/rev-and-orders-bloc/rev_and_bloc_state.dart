part of 'rev_and_bloc_bloc.dart';

@immutable
sealed class RevAndBlocState {}

final class RevAndBlocInitial extends RevAndBlocState {
  final List<int> items;
  final int index;

  RevAndBlocInitial({required this.items,required this.index});

  RevAndBlocInitial copywith({List<int>? items, int? index}) {
    return RevAndBlocInitial(items: items ?? this.items, index: index ?? this.index);
  }
}
