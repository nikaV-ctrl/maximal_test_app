import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/app_api.dart';
import 'package:max_app/feature/search/data/dto/search_dto.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';
import 'package:max_app/feature/search/domain/repository/search_repo.dart';

@Injectable(as: SearchRepository)
@dev
class DevSearchRepository implements SearchRepository {
  final AppApi api;
  DevSearchRepository({required this.api});

  @override
  Future<SearchEntity> getSearch({required String q}) async {
    try {
      final Response response =
          await api.get('/search/users', queryParameters: {
        "q": q,
      });
      final SearchEntity search = await compute(
        (data) => SearchDto.fromJson(data).convertToEntity(),
        response.data,
      );
      return search;
    } catch (_) {
      rethrow;
    }
  }
}
