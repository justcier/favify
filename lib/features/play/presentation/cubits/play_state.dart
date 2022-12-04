import 'package:favify/features/categories/domain/models/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../categories/domain/models/category/category.dart';

part 'play_state.freezed.dart';
part 'play_state.g.dart';

@freezed
class PlayState with _$PlayState {
  const PlayState._();

  const factory PlayState({
    Category? category,
    @Default([]) List<Item> winnerItems,
    @Default(false) bool isWinnerDetermined,
  }) = _PlayState;

  factory PlayState.initial() => const PlayState();

  factory PlayState.fromJson(Map<String, dynamic> json) =>
      _$PlayStateFromJson(json);
}
