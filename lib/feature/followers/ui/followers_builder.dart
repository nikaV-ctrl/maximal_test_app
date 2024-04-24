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

class FollowersBuilder extends StatefulWidget {
  final Function(int amountOfFollowers, String login) onSuccess;
  final FollowersValueWidgetBuilder<List<FollowersEntity>> builder;
  final FollowersLoadingWidgetBuilder loadingBuilder;
  final FollowersErrorWidgetBuilder<ErrorEntity> errorBuilder;
  const FollowersBuilder({
    Key? key,
    required this.builder,
    required this.loadingBuilder,
    required this.errorBuilder,
    required this.onSuccess,
  }) : super(key: key);

  @override
  State<FollowersBuilder> createState() => _FollowersBuilderState();
}

class _FollowersBuilderState extends State<FollowersBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FollowersCubit, FollowersState>(
      listener: (context, state) {
        state.when(
          waiting: () {},
          data: (followers, login) {
            widget.onSuccess(followers.length, login);
          },
          error: (error) {},
        );
      },
      builder: (context, state) {
        return state.when(
          data: (followers, login) => widget.builder(context, followers),
          waiting: () => widget.loadingBuilder(context),
          error: (
            error,
          ) =>
              widget.errorBuilder(context, error),
        );
      },
    );
  }
}
