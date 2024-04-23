import 'package:json_annotation/json_annotation.dart';
import 'package:max_app/feature/repos/domain/entity/repos_entity.dart';

part 'repos_dto.g.dart';

@JsonSerializable()
class ReposDto {
  @JsonKey(name: "id")
  final dynamic id;
  @JsonKey(name: "node_id")
  final dynamic nodeId;
  @JsonKey(name: "name")
  final dynamic name;
  @JsonKey(name: "full_name")
  final dynamic fullName;
  @JsonKey(name: "description")
  final dynamic description;
  @JsonKey(name: "pushed_at")
  final dynamic pushedAt;
  @JsonKey(name: "stargazers_count")
  final dynamic stargazersCount;
  @JsonKey(name: "language")
  final dynamic language;
  @JsonKey(name: "forks_count")
  final dynamic forksCount;
  @JsonKey(name: "forks")
  final dynamic forks;
  @JsonKey(name: "default_branch")
  final dynamic defaultBranch;

  ReposDto({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.description,
    required this.pushedAt,
    required this.stargazersCount,
    required this.language,
    required this.forksCount,
    required this.forks,
    required this.defaultBranch,
  });

  factory ReposDto.fromJson(Map<String, dynamic> json) =>
      _$ReposDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReposDtoToJson(this);

  ReposEntity convertToEntity() {
    return ReposEntity(
      id: int.tryParse(id?.toString() ?? '') ?? 0,
      nodeId: nodeId?.toString() ?? '',
      name: name?.toString() ?? '',
      fullName: fullName?.toString() ?? '',
      description: description?.toString() ?? '',
      pushedAt: pushedAt == null ? null : DateTime.tryParse(pushedAt),
      stargazersCount: int.tryParse(stargazersCount?.toString() ?? '') ?? 0,
      language: language?.toString() ?? '',
      forksCount: int.tryParse(forksCount?.toString() ?? '') ?? 0,
      forks: int.tryParse(forks?.toString() ?? '') ?? 0,
      defaultBranch: defaultBranch?.toString() ?? '',
    );
  }
}
