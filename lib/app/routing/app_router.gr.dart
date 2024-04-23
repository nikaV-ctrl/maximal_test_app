// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:max_app/app/ui/navigation/search_navigation.dart' as _i4;
import 'package:max_app/app/view/auth_view/auth_view.dart' as _i1;
import 'package:max_app/app/view/main/main_view.dart' as _i2;
import 'package:max_app/app/view/navbar_view/navbar_view.dart' as _i3;
import 'package:max_app/app/view/search/search_view.dart' as _i5;
import 'package:max_app/app/view/user/user_view.dart' as _i6;
import 'package:max_app/feature/search/domain/entity/search_entity.dart' as _i9;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthView.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthView(),
      );
    },
    MainView.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainView(),
      );
    },
    NavBarView.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavBarView(),
      );
    },
    SearchNavigation.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SearchNavigation(),
      );
    },
    SearchView.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchView(),
      );
    },
    UserView.name: (routeData) {
      final args = routeData.argsAs<UserViewArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.UserView(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthView]
class AuthView extends _i7.PageRouteInfo<void> {
  const AuthView({List<_i7.PageRouteInfo>? children})
      : super(
          AuthView.name,
          initialChildren: children,
        );

  static const String name = 'AuthView';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MainView]
class MainView extends _i7.PageRouteInfo<void> {
  const MainView({List<_i7.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NavBarView]
class NavBarView extends _i7.PageRouteInfo<void> {
  const NavBarView({List<_i7.PageRouteInfo>? children})
      : super(
          NavBarView.name,
          initialChildren: children,
        );

  static const String name = 'NavBarView';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SearchNavigation]
class SearchNavigation extends _i7.PageRouteInfo<void> {
  const SearchNavigation({List<_i7.PageRouteInfo>? children})
      : super(
          SearchNavigation.name,
          initialChildren: children,
        );

  static const String name = 'SearchNavigation';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SearchView]
class SearchView extends _i7.PageRouteInfo<void> {
  const SearchView({List<_i7.PageRouteInfo>? children})
      : super(
          SearchView.name,
          initialChildren: children,
        );

  static const String name = 'SearchView';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.UserView]
class UserView extends _i7.PageRouteInfo<UserViewArgs> {
  UserView({
    _i8.Key? key,
    required _i9.UserEntity user,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          UserView.name,
          args: UserViewArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'UserView';

  static const _i7.PageInfo<UserViewArgs> page =
      _i7.PageInfo<UserViewArgs>(name);
}

class UserViewArgs {
  const UserViewArgs({
    this.key,
    required this.user,
  });

  final _i8.Key? key;

  final _i9.UserEntity user;

  @override
  String toString() {
    return 'UserViewArgs{key: $key, user: $user}';
  }
}
