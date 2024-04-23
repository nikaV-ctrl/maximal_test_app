// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../feature/followers/data/repository/dev_followers_repo.dart'
    as _i10;
import '../../feature/followers/domain/repository/followers_repo.dart' as _i9;
import '../../feature/followers/domain/state/cubit/followers_cubit.dart'
    as _i15;
import '../../feature/repos/data/repository/dev_repos_repo.dart' as _i12;
import '../../feature/repos/domain/repository/repos_repo.dart' as _i11;
import '../../feature/repos/domain/state/cubit/repos_cubit.dart' as _i16;
import '../../feature/search/data/repository/dev_search_repo.dart' as _i14;
import '../../feature/search/domain/repository/search_repo.dart' as _i13;
import '../../feature/search/domain/state/cubit/search_cubit.dart' as _i17;
import '../data/dio/dio_app_api.dart' as _i8;
import '../data/dio/error_handler/dio_api_error_handler.dart' as _i4;
import '../data/main_app_config.dart' as _i6;
import '../domain/app_api.dart' as _i7;
import '../domain/app_config.dart' as _i5;
import '../domain/error_handler/api_error_handler.dart' as _i3;

const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.ApiErrorHandler>(_i4.DioApiErrorHandler());
  gh.singleton<_i5.AppConfig>(
    _i6.MainAppConfig(),
    registerFor: {_dev},
  );
  gh.singleton<_i7.AppApi>(_i8.DioAppApi(get<_i5.AppConfig>()));
  gh.factory<_i9.FollowersRepository>(
    () => _i10.DevFollowersRepository(api: get<_i7.AppApi>()),
    registerFor: {_dev},
  );
  gh.factory<_i11.ReposRepository>(
    () => _i12.DevReposRepository(api: get<_i7.AppApi>()),
    registerFor: {_dev},
  );
  gh.factory<_i13.SearchRepository>(
    () => _i14.DevSearchRepository(api: get<_i7.AppApi>()),
    registerFor: {_dev},
  );
  gh.factory<_i15.FollowersCubit>(() => _i15.FollowersCubit(
        followersRepository: get<_i9.FollowersRepository>(),
        errorHandler: get<_i3.ApiErrorHandler>(),
      ));
  gh.factory<_i16.ReposCubit>(() => _i16.ReposCubit(
        reposRepository: get<_i11.ReposRepository>(),
        errorHandler: get<_i3.ApiErrorHandler>(),
      ));
  gh.factory<_i17.SearchCubit>(() => _i17.SearchCubit(
        searchRepository: get<_i13.SearchRepository>(),
        errorHandler: get<_i3.ApiErrorHandler>(),
      ));
  return get;
}
