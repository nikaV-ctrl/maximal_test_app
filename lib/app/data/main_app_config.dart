import 'package:injectable/injectable.dart';
import 'package:max_app/app/domain/app_config.dart';

@Singleton(as: AppConfig)
@dev
class MainAppConfig implements AppConfig {
  @override
  String get baseUrl => 'https://api.github.com';
}
