import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_app/app/di/init_di.dart';
import 'package:max_app/feature/followers/domain/state/cubit/followers_cubit.dart';
import 'package:max_app/feature/repos/domain/state/cubit/repos_cubit.dart';
import 'package:max_app/feature/search/domain/state/cubit/search_cubit.dart';

final List providersList = [
  BlocProvider<SearchCubit>(
    create: (_) => getIt<SearchCubit>(),
    lazy: true,
  ),
  BlocProvider<FollowersCubit>(
    create: (_) => getIt<FollowersCubit>(),
    lazy: true,
  ),
  BlocProvider<ReposCubit>(
    create: (_) => getIt<ReposCubit>(),
    lazy: true,
  ),
];
