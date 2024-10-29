import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'food_detail_event.dart';
part 'food_detail_state.dart';

class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailInitial> {
  FoodDetailBloc()
      : super(FoodDetailInitial(
            levelList: const [
              "Level 1",
              "Level 2",
              "Level 3",
              "Level 4",
              "Level 5",
            ],
            amount: 0,
            portionList: const ["Kecil", "Sedang", "Besar", "Jumbo"])) {
    on<LevelEvent>((event, emit) {
      print(event.chosenLevel);
      emit(state.copyWith(
          levelList: state.levelList,
          portionList: state.portionList,
          amount: state.amount,
          chosenPortion: state.chosenPortion,
          chosenLevel: event.chosenLevel));
    });

    on<PortionEvent>((event, emit) {
      print(event.chosenPortion);
      emit(state.copyWith(
          levelList: state.levelList,
          portionList: state.portionList,
          amount: state.amount,
          chosenLevel: state.chosenLevel,
          chosenPortion: event.chosenPortion));
    });

    on<AddAmountEvent>(
      (event, emit) {
        emit(state.copyWith(
            levelList: state.levelList,
            portionList: state.portionList,
            amount: event.amount + 1,
            chosenLevel: state.chosenLevel,
            chosenPortion: state.chosenPortion));
      },
    );

    on<SubtractAmountEvent>(
      (event, emit) {
        emit(state.copyWith(
            levelList: state.levelList,
            portionList: state.portionList,
            amount: event.amount == 0 ? 0 : event.amount - 1,
            chosenLevel: state.chosenLevel,
            chosenPortion: state.chosenPortion));
      },
    );
  }
}
