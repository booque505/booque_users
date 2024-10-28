import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'food_detail_event.dart';
part 'food_detail_state.dart';

class FoodDetailBloc extends Bloc<FoodDetailEvent, FoodDetailInitial> {
  FoodDetailBloc()
      : super(FoodDetailInitial(levelList: const [
          "Level 1",
          "Level 2",
          "Level 3",
          "Level 4",
          "Level 5",
        ], portionList: const [
          "Kecil",
          "Sedang",
          "Besar",
          "Jumbo"
        ])) {
    on<LevelEvent>((event, emit) {
      print(event.chosenLevel);
      emit(state.copyWith(
          levelList: state.levelList,
          portionList: state.portionList,
          chosenPortion: state.chosenPortion,
          chosenLevel: event.chosenLevel));
    });

    on<PortionEvent>((event, emit) {
       print(event.chosenPortion);
      emit(state.copyWith(
          levelList: state.levelList,
          portionList: state.portionList,
          chosenLevel: state.chosenLevel,
          chosenPortion: event.chosenPortion));
    });
  }
}
