import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'rev_and_bloc_event.dart';
part 'rev_and_bloc_state.dart';

class RevAndBlocBloc extends Bloc<RevAndBlocEvent, RevAndBlocInitial> {
  RevAndBlocBloc() : super(RevAndBlocInitial(items: [], index: 0)) {
    on<AddItem>((event, emit) {
      List<int> items = event.item;
      items[event.index] = items[event.index] + 1;

      emit(state.copywith(items: items, index: event.index));
    });

    on<SubtractItem>(
      (event, emit) {
        List<int> items = event.item;

        if (items[event.index] > 0) {
          items[event.index] = items[event.index] - 1;
          emit(state.copywith(items: items, index: event.index));
        }
      },
    );

    on<InitialRevAndBloc>(
      (event, emit) {
        emit(state.copywith(items: [0, 0, 0, 0, 0], index: 0));
      },
    );

    add(InitialRevAndBloc());
  }
}
