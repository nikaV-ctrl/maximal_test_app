import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/app_api.dart';
import 'package:max_app/feature/followers/data/dto/followers_dto.dart';
import 'package:max_app/feature/followers/domain/entity/followers_entity.dart';
import 'package:max_app/feature/followers/domain/repository/followers_repo.dart';

@Injectable(as: FollowersRepository)
@dev
class DevFollowersRepository implements FollowersRepository {
  final AppApi api;
  DevFollowersRepository({required this.api});

  @override
  Future<List<FollowersEntity>> getFollowers({required String login}) async {
    try {
      final Response response = await api.get(
        '/users/$login/followers',
      );
      final List<FollowersEntity> followers = await compute(
        (data) => List<FollowersEntity>.from(
          data.map(
            (x) => FollowersDto.fromJson(x).convertToEntity(),
          ),
        ),
        response.data,
      );
      return followers;
    } catch (_) {
      rethrow;
    }
  }
}
