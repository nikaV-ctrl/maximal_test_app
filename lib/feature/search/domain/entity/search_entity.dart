import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_entity.freezed.dart';
part 'search_entity.g.dart';

@freezed
class SearchEntity with _$SearchEntity {
  const factory SearchEntity({
    required int totalCount,
    required bool incompleteResults,
    required List<UserEntity> items,
  }) = _SearchEntity;

  factory SearchEntity.fromJson(Map<String, dynamic> json) =>
      _$SearchEntityFromJson(json);
}

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String login,
    required int id,
    required String nodeId,
    required String avatarUrl,
    required String gravatarId,
    required String url,
    required String htmlUrl,
    required String followersUrl,
    required String followingUrl,
    required String gistsUrl,
    required String starredUrl,
    required String subscriptionsUrl,
    required String organizationsUrl,
    required String reposUrl,
    required String eventsUrl,
    required String receivedEventsUrl,
    required String type,
    required bool siteAdmin,
    required int score,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
