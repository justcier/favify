import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../categories/domain/models/category/category.dart';

part 'play_state.freezed.dart';

@freezed
class PlayState with _$PlayState {
  const PlayState._();

  const factory PlayState({
    Category? category,
    //Unmodified category is needed for Play Again option on Winner Page
    Category? unmodifiedCategory,
    @Default([]) List<Item> winnerItems,
    @Default(false) bool isWinnerDetermined,
  }) = _PlayState;

  factory PlayState.initial() => const PlayState();
}
