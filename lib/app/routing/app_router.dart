import 'package:auto_route/auto_route.dart';
import 'package:max_app/app/routing/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: NavBarView.page, path: '/', children: [
      AutoRoute(page: SearchNavigation.page, path: 'search', children: [
        AutoRoute(page: SearchView.page, path: ''),
        AutoRoute(page: UserView.page, path: 'user'),
      ]),
      AutoRoute(page: AuthView.page, path: 'auth'),
    ]),
  ];
}
