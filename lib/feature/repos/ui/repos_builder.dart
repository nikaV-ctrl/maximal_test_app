import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/feature/repos/domain/entity/repos_entity.dart';
import 'package:max_app/feature/repos/domain/state/cubit/repos_cubit.dart';

typedef ReposValueWidgetBuilder<R> = Widget Function(
  BuildContext context,
  R repos,
);

typedef ReposLoadingWidgetBuilder = Widget Function(
  BuildContext context,
);

typedef ReposErrorWidgetBuilder<E> = Widget Function(
  BuildContext context,
  E error,
);

class ReposBuilder extends StatelessWidget {
  final ReposValueWidgetBuilder<List<ReposEntity>> builder;
  final ReposLoadingWidgetBuilder loadingBuilder;
  final ReposErrorWidgetBuilder<ErrorEntity> errorBuilder;
  const ReposBuilder({
    Key? key,
    required this.builder,
    required this.loadingBuilder,
    required this.errorBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReposCubit, ReposState>(
      builder: (context, state) {
        return state.when(
          data: (repos) => builder(context, repos),
          waiting: () => loadingBuilder(context),
          error: (error) => errorBuilder(context, error),
        );
      },
    );
  }
}
