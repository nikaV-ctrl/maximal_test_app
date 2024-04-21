import 'package:auto_route/auto_route.dart';
import 'package:max_app/app/routing/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: MainView.page, path: '/'),
    AutoRoute(page: SearchView.page, path: '/search'),
    AutoRoute(page: UserView.page, path: '/user'),
  ];
}
