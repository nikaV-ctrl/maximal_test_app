import 'package:freezed_annotation/freezed_annotation.dart';

part 'repos_entity.freezed.dart';
part 'repos_entity.g.dart';

@freezed
class ReposEntity with _$ReposEntity {
  const factory ReposEntity({
    required int id,
    required String nodeId,
    required String name,
    required String fullName,
    required String description,
    required DateTime? pushedAt,
    required int stargazersCount,
    required String? language,
    required int forksCount,
    required int forks,
    required String defaultBranch,
  }) = _ReposEntity;

  factory ReposEntity.fromJson(Map<String, dynamic> json) =>
      _$ReposEntityFromJson(json);
}
