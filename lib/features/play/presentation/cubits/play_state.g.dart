// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayState _$$_PlayStateFromJson(Map<String, dynamic> json) => _$_PlayState(
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      winnerItems: (json['winnerItems'] as List<dynamic>?)
              ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PlayStateToJson(_$_PlayState instance) =>
    <String, dynamic>{
      'category': instance.category,
      'winnerItems': instance.winnerItems,
    };
