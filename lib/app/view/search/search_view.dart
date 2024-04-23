import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_app/app/extension/context_extension.dart';
import 'package:max_app/app/routing/app_router.gr.dart';
import 'package:max_app/app/value/colors/app_colors.dart';
import 'package:max_app/feature/followers/domain/state/cubit/followers_cubit.dart';
import 'package:max_app/feature/followers/ui/followers_builder.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';
import 'package:max_app/feature/search/domain/state/cubit/search_cubit.dart';
import 'package:max_app/feature/search/ui/search_builder.dart';

@RoutePage()
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  SearchViewState createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.text = '';
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchBar(),
      ),
      body: SearchBuilder(
        builder: (context, searchResult) {
          return searchResult.items.isNotEmpty
              ? usersList(searchResult: searchResult)
              : Center(
                  child: Text(context.translate.searchresultIsEmpty),
                );
        },
        loadingBuilder: (context) {
          return _searchController.text.trim().isNotEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container();
        },
        errorBuilder: (context, error) => Center(
            child: Text(
                'Error: ${error.statusCode ?? ''} ${context.errorMessage(error)}  ')),
      ),
    );
  }

  Widget searchBar() {
    return SizedBox(
      height: 40,
      child: TextFormField(
        scrollPadding: EdgeInsets.zero,
        controller: _searchController,
        autofocus: true,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: const Icon(Icons.search),
          hintText: context.translate.searchHint,
          hintStyle: context.textTheme.labelMedium?.copyWith(
            color: AppColors.grey,
          ),
          suffixIcon: InkWell(
            onTap: () => _searchController.text = '',
            child: const Icon(Icons.close),
          ),
          isDense: true,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.deepBlueColor)),
          errorStyle: const TextStyle(
            fontSize: 0,
          ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.requireField)),
          border: const OutlineInputBorder(),
        ),
        textAlignVertical: TextAlignVertical.center,
        maxLines: 1,
        onFieldSubmitted: (value) {
          if (value.trim().isNotEmpty) {
            context.read<SearchCubit>().getSearch(q: value);
          }
          context.router.maybePop(value);
        },
        // onChanged: onChanges,
      ),
    );
  }

  Widget usersList({required SearchEntity searchResult}) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemCount: searchResult.items.length,
      itemBuilder: (BuildContext context, int index) {
        final user = searchResult.items[index];
        return ListTile(
          leading: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(user.avatarUrl),
          ),
          title: Text(
            user.login,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: followersSubtitle(login: user.login),
          onTap: () => context.router.push(UserView(user: user)),
        );
      },
    );
  }

  Widget followersSubtitle({
    required String login,
  }) {
    context.read<FollowersCubit>().getFollowers(login: login);
    return FollowersBuilder(
      errorBuilder: (context, error) => const Text("_"),
      loadingBuilder: (context) => const SizedBox.shrink(),
      builder: (context, followers) {
        return Text("${followers.length}");
      },
    );
  }

  Future onChanges(String text) async {
    setState(() {});
    Future.delayed(
      const Duration(milliseconds: 200),
      () {
        if (_searchController.text == text) {
          if (text.trim().isNotEmpty) {
            context.read<SearchCubit>().getSearch(q: text);
          }
        }
      },
    );
  }
}
