import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'init_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void initDi() {
  $initGetIt(getIt, environment: "dev");
}
