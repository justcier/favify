import 'package:bloc/bloc.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/features/play/presentation/cubits/play_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayCubit extends Cubit<PlayState> {
  PlayCubit() : super(PlayState.initial());

  void updateAndSortCategory(Category category) {
    final List<Item> shuffledItems = [...category.items]..shuffle();
    emit(
      state.copyWith(
        category: category.copyWith(items: shuffledItems),
        unmodifiedCategory: category,
      ),
    );
  }

  void addWinnerToWinnerList(Item winnerItem) {
    emit(state.copyWith(winnerItems: [...state.winnerItems, winnerItem]));
  }

  void deleteFirstAndSecondItem() {
    final List<Item> deletedItems = [...state.category!.items]
      ..removeAt(0)
      ..removeAt(0);
    emit(
      state.copyWith(
        category: state.category!.copyWith(items: deletedItems),
      ),
    );
  }

  void chooseWinner(Item winnerItem) {
    addWinnerToWinnerList(winnerItem);
    deleteFirstAndSecondItem();

    if (state.category!.items.isEmpty) {
      emit(
        state.copyWith(
          category: state.category!.copyWith(items: state.winnerItems),
        ),
      );
      emit(state.copyWith(winnerItems: []));
    }
    if (state.category!.items.length == 1) {
      emit(state.copyWith(isWinnerDetermined: true));
    }
  }
}
