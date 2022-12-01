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
    emit(state.copyWith(category: category.copyWith(items: shuffledItems)));
  }

  void addWinnerToWinnerList(Item winnerItem) {
    emit(state.copyWith(winnerItems: [...state.winnerItems, winnerItem]));
  }

  void deleteFirstAndSecondItem() {
    final List<Item> deletedItems = [...state.category!.items]
      ..removeRange(0, 1);
    emit(
      state.copyWith(
        category: state.category!.copyWith(items: deletedItems),
      ),
    );
  }
}
