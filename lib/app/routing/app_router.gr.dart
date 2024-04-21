// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:max_app/app/view/main/main_view.dart' as _i1;
import 'package:max_app/app/view/search/search_view.dart' as _i2;
import 'package:max_app/app/view/user/user_view.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainView(),
      );
    },
    SearchView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SearchView(),
      );
    },
    UserView.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserView(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainView]
class MainView extends _i4.PageRouteInfo<void> {
  const MainView({List<_i4.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SearchView]
class SearchView extends _i4.PageRouteInfo<void> {
  const SearchView({List<_i4.PageRouteInfo>? children})
      : super(
          SearchView.name,
          initialChildren: children,
        );

  static const String name = 'SearchView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserView]
class UserView extends _i4.PageRouteInfo<void> {
  const UserView({List<_i4.PageRouteInfo>? children})
      : super(
          UserView.name,
          initialChildren: children,
        );

  static const String name = 'UserView';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
