import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/feature/followers/domain/entity/followers_entity.dart';
import 'package:max_app/feature/followers/domain/state/cubit/followers_cubit.dart';

typedef FollowersValueWidgetBuilder<F> = Widget Function(
  BuildContext context,
  F followers,
);

typedef FollowersLoadingWidgetBuilder = Widget Function(
  BuildContext context,
);

typedef FollowersErrorWidgetBuilder<E> = Widget Function(
  BuildContext context,
  E error,
);

class FollowersBuilder extends StatelessWidget {
  final FollowersValueWidgetBuilder<List<FollowersEntity>> builder;
  final FollowersLoadingWidgetBuilder loadingBuilder;
  final FollowersErrorWidgetBuilder<ErrorEntity> errorBuilder;
  const FollowersBuilder({
    Key? key,
    required this.builder,
    required this.loadingBuilder,
    required this.errorBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowersCubit, FollowersState>(
      builder: (context, state) {
        return state.when(
          data: (followers) => builder(context, followers),
          waiting: () => loadingBuilder(context),
          error: (error) => errorBuilder(context, error),
        );
      },
    );
  }
}
