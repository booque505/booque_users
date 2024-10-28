import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeInitial> {
  HomeBloc() : super(HomeInitial(isSearch: false, chosenListFilter: [])) {
    on<ChangeTitletoSearch>((event, emit) {
      bool isSearch = !state.isSearch;
      emit(state.copyWith(isSearch: isSearch));
    });

   
    on<ChangeFilterChip>((event, emit) {
      print("isChangeFilter");
      List<String> chosenListChip = [
        "Makanan",
        "Minuman",
        "Snack",
        "Mie Goreng",
        "Kelapa"
      ];
      emit(state.copyWith(
          isSearch: false,
          chosenFilter: event.chosenFilter,
          chosenListFilter: chosenListChip));
    });
     add(ChangeFilterChip());
  }
}
