part of 'rev_and_bloc_bloc.dart';

@immutable
sealed class RevAndBlocEvent {}

class AddItem extends RevAndBlocEvent{
  List<int> item = [];
  int index = 0;
  
  AddItem({required this.item,required this.index});
}

class SubtractItem extends RevAndBlocEvent{
  List<int> item = [];
  int index = 0;

  SubtractItem({required this.item,required this.index});
}

class InitialRevAndBloc extends RevAndBlocEvent{}
