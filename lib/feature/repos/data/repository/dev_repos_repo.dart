import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/app_api.dart';
import 'package:max_app/feature/repos/data/dto/repos_dto.dart';
import 'package:max_app/feature/repos/domain/entity/repos_entity.dart';
import 'package:max_app/feature/repos/domain/repository/repos_repo.dart';

@Injectable(as: ReposRepository)
@dev
class DevReposRepository implements ReposRepository {
  final AppApi api;
  DevReposRepository({required this.api});

  @override
  Future<List<ReposEntity>> getRepos({required String login}) async {
    try {
      final Response response = await api.get(
        '/users/$login/repos',
      );
      final List<ReposEntity> repos = await compute(
        (data) => List<ReposEntity>.from(
          data.map(
            (x) => ReposDto.fromJson(x).convertToEntity(),
          ),
        ),
        response.data,
      );
      return repos;
    } catch (_) {
      rethrow;
    }
  }
}
