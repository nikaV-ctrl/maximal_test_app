import 'package:json_annotation/json_annotation.dart';
import 'package:max_app/feature/followers/domain/entity/followers_entity.dart';

part 'followers_dto.g.dart';

@JsonSerializable()
class FollowersDto {
  @JsonKey(name: "login")
  final dynamic login;
  @JsonKey(name: "id")
  final dynamic id;
  @JsonKey(name: "node_id")
  final dynamic nodeId;
  @JsonKey(name: "avatar_url")
  final dynamic avatarUrl;
  @JsonKey(name: "gravatar_id")
  final dynamic gravatarId;
  @JsonKey(name: "url")
  final dynamic url;
  @JsonKey(name: "html_url")
  final dynamic htmlUrl;
  @JsonKey(name: "followers_url")
  final dynamic followersUrl;
  @JsonKey(name: "following_url")
  final dynamic followingUrl;
  @JsonKey(name: "gists_url")
  final dynamic gistsUrl;
  @JsonKey(name: "starred_url")
  final dynamic starredUrl;
  @JsonKey(name: "subscriptions_url")
  final dynamic subscriptionsUrl;
  @JsonKey(name: "organizations_url")
  final dynamic organizationsUrl;
  @JsonKey(name: "repos_url")
  final dynamic reposUrl;
  @JsonKey(name: "events_url")
  final dynamic eventsUrl;
  @JsonKey(name: "received_events_url")
  final dynamic receivedEventsUrl;
  @JsonKey(name: "type")
  final dynamic type;
  @JsonKey(name: "site_admin")
  final dynamic siteAdmin;

  FollowersDto({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });

  factory FollowersDto.fromJson(Map<String, dynamic> json) =>
      _$FollowersDtoFromJson(json);

  Map<String, dynamic> toJson() => _$FollowersDtoToJson(this);

  FollowersEntity convertToEntity() {
    return FollowersEntity(
        login: login?.toString() ?? '',
        id: int.tryParse(id?.toString() ?? '') ?? 0,
        nodeId: nodeId?.toString() ?? '',
        avatarUrl: avatarUrl?.toString() ?? '',
        gravatarId: gravatarId?.toString() ?? '',
        url: url?.toString() ?? '',
        htmlUrl: htmlUrl?.toString() ?? '',
        followersUrl: followersUrl?.toString() ?? '',
        followingUrl: followingUrl?.toString() ?? '',
        gistsUrl: gistsUrl?.toString() ?? '',
        starredUrl: starredUrl?.toString() ?? '',
        subscriptionsUrl: subscriptionsUrl?.toString() ?? '',
        organizationsUrl: organizationsUrl?.toString() ?? '',
        reposUrl: reposUrl?.toString() ?? '',
        eventsUrl: eventsUrl?.toString() ?? '',
        receivedEventsUrl: receivedEventsUrl?.toString() ?? '',
        type: type?.toString() ?? '',
        siteAdmin: siteAdmin == true);
  }
}
