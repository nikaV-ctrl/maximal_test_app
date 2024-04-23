// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReposDto _$ReposDtoFromJson(Map<String, dynamic> json) => ReposDto(
      id: json['id'],
      nodeId: json['node_id'],
      name: json['name'],
      fullName: json['full_name'],
      description: json['description'],
      pushedAt: json['pushed_at'],
      stargazersCount: json['stargazers_count'],
      language: json['language'],
      forksCount: json['forks_count'],
      forks: json['forks'],
      defaultBranch: json['default_branch'],
    );

Map<String, dynamic> _$ReposDtoToJson(ReposDto instance) => <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
      'name': instance.name,
      'full_name': instance.fullName,
      'description': instance.description,
      'pushed_at': instance.pushedAt,
      'stargazers_count': instance.stargazersCount,
      'language': instance.language,
      'forks_count': instance.forksCount,
      'forks': instance.forks,
      'default_branch': instance.defaultBranch,
    };
