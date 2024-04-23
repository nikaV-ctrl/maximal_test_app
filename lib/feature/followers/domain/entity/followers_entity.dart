import 'package:freezed_annotation/freezed_annotation.dart';

part 'followers_entity.freezed.dart';
part 'followers_entity.g.dart';

@freezed
class FollowersEntity with _$FollowersEntity {
  const factory FollowersEntity({
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
  }) = _FollowersEntity;

  factory FollowersEntity.fromJson(Map<String, dynamic> json) =>
      _$FollowersEntityFromJson(json);
}
