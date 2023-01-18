import 'package:bloc_test/bloc_test.dart';
import 'package:favify/features/categories/domain/models/category/category.dart';
import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:favify/features/categories/domain/use_cases/get_stored_winner_categories_use_case.dart';
import 'package:favify/features/categories/domain/use_cases/store_winner_categories_use_case.dart';
import 'package:favify/features/play/presentation/cubits/play_cubit.dart';
import 'package:favify/features/play/presentation/cubits/play_state.dart';
import 'package:favify/services/injection_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks.dart';
import '../../../../test_data.dart';

void main() {
  final GetStoredWinnerCategoriesUseCase getStoredWinnerCategoriesUseCase =
      MockGetStoredCategoriesUseCase();
  final StoreWinnerCategoriesUseCase storeWinnerCategoriesUseCase =
      MockStoreWinnerCategoriesUseCase();

  PlayCubit buildCubit() => PlayCubit();
  final PlayState initialState = PlayState.initial();
  final Category tCategory = tCategories.first;

  setUpAll(() {
    getIt
      ..registerFactoryAsync<GetStoredWinnerCategoriesUseCase>(
        () async => getStoredWinnerCategoriesUseCase,
      )
      ..registerFactoryAsync<StoreWinnerCategoriesUseCase>(
        () async => storeWinnerCategoriesUseCase,
      );
    when(getStoredWinnerCategoriesUseCase.call).thenReturn([tCategories[0]]);
  });

  group('updateAndSortCategory', () {
    final List<Item> shuffledItems = [...tCategory.items]..shuffle();
    final now = DateTime.now();
    blocTest<PlayCubit, PlayState>(
      'should emit loaded category with shuffled items',
      build: buildCubit,
      act: (cubit) => cubit.updateAndSortCategory(tCategory),
      skip: 1,
      verify: (cubit) => [
        expect(
          shuffledItems,
          isNot(cubit.state.category!.items),
        ),
        expect(
          cubit.state.category!.playedDate,
          DateTime(now.year, now.month, now.day),
        )
      ],
    );
  });

  group('addWinnerToWinnerList', () {
    final Item tWinnerItem = tCategory.items.first;
    blocTest<PlayCubit, PlayState>(
      'should emit correct states when winner item is added to winner items list',
      build: buildCubit,
      act: (cubit) => cubit.addWinnerToWinnerList(tWinnerItem),
      expect: () => [
        initialState
            .copyWith(winnerItems: [...initialState.winnerItems, tWinnerItem]),
      ],
    );
  });

  group('deleteFirstAndSecondItem', () {
    final List<Item> deletedItems = [...tCategory.items]
      ..removeAt(0)
      ..removeAt(0);

    blocTest<PlayCubit, PlayState>(
      'should emit category with deleted first and second element',
      seed: () => initialState.copyWith(category: tCategory),
      build: buildCubit,
      act: (cubit) => cubit.deleteFirstAndSecondItem(),
      expect: () => [
        initialState.copyWith(
          category: tCategory.copyWith(items: deletedItems),
        )
      ],
    );
  });

  group('chooseWinner', () {
    final Item tWinnerItem = tCategory.items.first;

    blocTest<PlayCubit, PlayState>(
      'should emit correct states when items list is empty',
      seed: () => initialState.copyWith(
        category: tCategory.copyWith(items: [tWinnerItem, tWinnerItem]),
        winnerItems: [tWinnerItem],
      ),
      build: buildCubit,
      act: (cubit) => cubit.chooseWinner(tWinnerItem),
      skip: 2,
      expect: () => [
        initialState.copyWith(
          category: tCategory.copyWith(items: [tWinnerItem, tWinnerItem]),
          winnerItems: [],
        )
      ],
    );

    blocTest<PlayCubit, PlayState>(
      'should emit correct states when items list has 1 item',
      seed: () => initialState.copyWith(
        category: tCategory.copyWith(
          items: [tWinnerItem, tWinnerItem, tWinnerItem],
        ),
      ),
      build: buildCubit,
      act: (cubit) => cubit.chooseWinner(tWinnerItem),
      skip: 2,
      expect: () => [
        initialState.copyWith(
          category: tCategory.copyWith(items: [tWinnerItem]),
          winnerItems: [tWinnerItem],
          isWinnerDetermined: true,
        )
      ],
    );

    blocTest<PlayCubit, PlayState>(
      'should emit correct states when items list is empty and then has 1 item',
      seed: () => initialState.copyWith(
        category: tCategory.copyWith(items: [tWinnerItem, tWinnerItem]),
      ),
      build: buildCubit,
      act: (cubit) => cubit.chooseWinner(tWinnerItem),
      skip: 2,
      expect: () => [
        initialState.copyWith(
          category: tCategory.copyWith(items: [tWinnerItem]),
          winnerItems: [],
          isWinnerDetermined: false,
        ),
        initialState.copyWith(
          category: tCategory.copyWith(items: [tWinnerItem]),
          winnerItems: [],
          isWinnerDetermined: true,
        )
      ],
    );
  });
}
