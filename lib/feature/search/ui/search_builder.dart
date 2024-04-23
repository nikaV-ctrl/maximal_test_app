import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_app/app/domain/entity/error_entity.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';
import 'package:max_app/feature/search/domain/state/cubit/search_cubit.dart';

typedef SearchValueWidgetBuilder<S> = Widget Function(
  BuildContext context,
  S search,
);

typedef SearchLoadingWidgetBuilder = Widget Function(
  BuildContext context,
);

typedef SearchErrorWidgetBuilder<E> = Widget Function(
  BuildContext context,
  E error,
);

class SearchBuilder extends StatelessWidget {
  final SearchValueWidgetBuilder<SearchEntity> builder;
  final SearchLoadingWidgetBuilder loadingBuilder;
  final SearchErrorWidgetBuilder<ErrorEntity> errorBuilder;
  const SearchBuilder({
    Key? key,
    required this.builder,
    required this.loadingBuilder,
    required this.errorBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        return state.when(
          data: (searchResult) => builder(context, searchResult),
          waiting: () => loadingBuilder(context),
          error: (error) => errorBuilder(context, error),
        );
      },
    );
  }
}
