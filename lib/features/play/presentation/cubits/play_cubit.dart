import 'package:bloc/bloc.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart';
import 'package:favify/features/play/presentation/cubits/play_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class PlayCubit extends Cubit<PlayState> {
  PlayCubit() : super(PlayState.initial());

  void updateAndSortCategory(Category category) {
    final List<Item> shuffledItems = [...category.items]..shuffle();
    final now = DateTime.now();
    emit(
      state.copyWith(
        category: category.copyWith(
          items: shuffledItems,
          // Now is added to allowed testing of this code.
          playedDate: DateTime(now.year, now.month, now.day),
        ),
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

  Future<void> chooseWinner(Item winnerItem) async {
    addWinnerToWinnerList(winnerItem);
    deleteFirstAndSecondItem();

    if (state.category!.items.isEmpty) {
      emit(
        state.copyWith(
          category: state.category!.copyWith(items: state.winnerItems),
          winnerItems: [],
        ),
      );
    }
    if (state.category!.items.length == 1) {
      final List<Category> storedWinnerCategories =
          (await getIt.getAsync<GetStoredWinnerCategoriesUseCase>()).call();
      // Added new category to winner list.
      final List<Category> newCategoriesToStore = [
        state.category!,
        ...storedWinnerCategories
      ];
      (await getIt.getAsync<StoreWinnerCategoriesUseCase>())
          .call(newCategoriesToStore);
      emit(state.copyWith(isWinnerDetermined: true));
    }
  }
}
