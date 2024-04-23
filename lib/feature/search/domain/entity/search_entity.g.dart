// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchEntityImpl _$$SearchEntityImplFromJson(Map<String, dynamic> json) =>
    _$SearchEntityImpl(
      totalCount: json['totalCount'] as int,
      incompleteResults: json['incompleteResults'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchEntityImplToJson(_$SearchEntityImpl instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'incompleteResults': instance.incompleteResults,
      'items': instance.items,
    };

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      login: json['login'] as String,
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      avatarUrl: json['avatarUrl'] as String,
      gravatarId: json['gravatarId'] as String,
      url: json['url'] as String,
      htmlUrl: json['htmlUrl'] as String,
      followersUrl: json['followersUrl'] as String,
      followingUrl: json['followingUrl'] as String,
      gistsUrl: json['gistsUrl'] as String,
      starredUrl: json['starredUrl'] as String,
      subscriptionsUrl: json['subscriptionsUrl'] as String,
      organizationsUrl: json['organizationsUrl'] as String,
      reposUrl: json['reposUrl'] as String,
      eventsUrl: json['eventsUrl'] as String,
      receivedEventsUrl: json['receivedEventsUrl'] as String,
      type: json['type'] as String,
      siteAdmin: json['siteAdmin'] as bool,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'id': instance.id,
      'nodeId': instance.nodeId,
      'avatarUrl': instance.avatarUrl,
      'gravatarId': instance.gravatarId,
      'url': instance.url,
      'htmlUrl': instance.htmlUrl,
      'followersUrl': instance.followersUrl,
      'followingUrl': instance.followingUrl,
      'gistsUrl': instance.gistsUrl,
      'starredUrl': instance.starredUrl,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'organizationsUrl': instance.organizationsUrl,
      'reposUrl': instance.reposUrl,
      'eventsUrl': instance.eventsUrl,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'type': instance.type,
      'siteAdmin': instance.siteAdmin,
      'score': instance.score,
    };
