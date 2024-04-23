// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReposEntityImpl _$$ReposEntityImplFromJson(Map<String, dynamic> json) =>
    _$ReposEntityImpl(
      id: json['id'] as int,
      nodeId: json['nodeId'] as String,
      name: json['name'] as String,
      fullName: json['fullName'] as String,
      description: json['description'] as String,
      pushedAt: json['pushedAt'] == null
          ? null
          : DateTime.parse(json['pushedAt'] as String),
      stargazersCount: json['stargazersCount'] as int,
      language: json['language'] as String?,
      forksCount: json['forksCount'] as int,
      forks: json['forks'] as int,
      defaultBranch: json['defaultBranch'] as String,
    );

Map<String, dynamic> _$$ReposEntityImplToJson(_$ReposEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nodeId': instance.nodeId,
      'name': instance.name,
      'fullName': instance.fullName,
      'description': instance.description,
      'pushedAt': instance.pushedAt?.toIso8601String(),
      'stargazersCount': instance.stargazersCount,
      'language': instance.language,
      'forksCount': instance.forksCount,
      'forks': instance.forks,
      'defaultBranch': instance.defaultBranch,
    };
