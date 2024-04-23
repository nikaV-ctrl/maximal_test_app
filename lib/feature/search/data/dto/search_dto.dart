import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';

part 'search_dto.g.dart';

@JsonSerializable()
class SearchDto {
  @JsonKey(name: "total_count")
  final dynamic totalCount;
  @JsonKey(name: "incomplete_results")
  final dynamic incompleteResults;
  @JsonKey(name: "items")
  final List<UserDto> items;

  SearchDto(
      {required this.totalCount,
      required this.incompleteResults,
      required this.items});

  factory SearchDto.fromJson(Map<String, dynamic> json) =>
      _$SearchDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SearchDtoToJson(this);

  SearchEntity convertToEntity() {
    return SearchEntity(
        totalCount: int.tryParse(totalCount?.toString() ?? '') ?? 0,
        incompleteResults: incompleteResults == true,
        items: List<UserEntity>.from(items.map((e) => UserEntity(
            login: e.login?.toString() ?? '',
            id: int.tryParse(e.id?.toString() ?? '') ?? 0,
            nodeId: e.nodeId?.toString() ?? '',
            avatarUrl: e.avatarUrl?.toString() ?? '',
            gravatarId: e.gravatarId?.toString() ?? '',
            url: e.url?.toString() ?? '',
            htmlUrl: e.htmlUrl?.toString() ?? '',
            followersUrl: e.followersUrl?.toString() ?? '',
            followingUrl: e.followingUrl?.toString() ?? '',
            gistsUrl: e.gistsUrl?.toString() ?? '',
            starredUrl: e.starredUrl?.toString() ?? '',
            subscriptionsUrl: e.subscriptionsUrl?.toString() ?? '',
            organizationsUrl: e.organizationsUrl?.toString() ?? '',
            reposUrl: e.reposUrl?.toString() ?? '',
            eventsUrl: e.eventsUrl?.toString() ?? '',
            receivedEventsUrl: e.receivedEventsUrl?.toString() ?? '',
            type: e.type?.toString() ?? '',
            siteAdmin: e.siteAdmin == true,
            score: int.tryParse(e.score?.toString() ?? '') ?? 0))));
  }
}

@JsonSerializable()
class UserDto {
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
  @JsonKey(name: "score")
  final dynamic score;

  UserDto({
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
    required this.score,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}
