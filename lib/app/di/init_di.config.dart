// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
  return get;
}
