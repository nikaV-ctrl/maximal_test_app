import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:max_app/app/extension/context_extension.dart';
import 'package:max_app/app/value/colors/app_colors.dart';
import 'package:max_app/feature/repos/domain/entity/repos_entity.dart';
import 'package:max_app/feature/repos/domain/state/cubit/repos_cubit.dart';
import 'package:max_app/feature/repos/ui/repos_builder.dart';
import 'package:max_app/feature/search/domain/entity/search_entity.dart';

@RoutePage()
class UserView extends StatefulWidget {
  final UserEntity user;
  const UserView({super.key, required this.user});

  @override
  UserViewState createState() => UserViewState();
}

class UserViewState extends State<UserView> {
  @override
  void initState() {
    super.initState();
    context.read<ReposCubit>().getRepos(login: widget.user.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.translate.repos,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ReposBuilder(loadingBuilder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }, errorBuilder: (context, error) {
        return Center(
            child: Text(
          'Error: ${error.statusCode ?? ''} ${context.errorMessage(error)}',
          textAlign: TextAlign.center,
        ));
      }, builder: (context, repos) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: reposList(repos: repos),
        );
      }),
    );
  }

  Widget reposList({required List<ReposEntity> repos}) {
    return ListView.separated(
      itemCount: repos.length,
      separatorBuilder: (context, index) => const Gap(12),
      itemBuilder: (BuildContext context, int index) {
        final repo = repos[index];
        return InkWell(
          onTap: () {},
          child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              margin: EdgeInsets.zero,
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      repo.name,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Gap(12),
                    Text(
                      repo.description,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.grey,
                      ),
                    ),
                    const Gap(12),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: context.translate.defaultBranch,
                            style: context.textTheme.titleMedium?.copyWith(),
                          ),
                          TextSpan(
                            text: repo.defaultBranch,
                            style: context.textTheme.titleMedium?.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                          const TextSpan(text: '\n'),
                          TextSpan(
                            text: context.translate.lastCommit,
                            style: context.textTheme.titleMedium?.copyWith(),
                          ),
                          TextSpan(
                            text: '${repo.pushedAt}',
                            style: context.textTheme.titleMedium?.copyWith(
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        valueIconContainer(
                          child: Image.asset(
                            "assets/png/branch.png",
                          ),
                          bgColor: AppColors.blueColor,
                        ),
                        const Gap(4),
                        Text(
                          "${repo.forksCount}",
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Gap(12),
                        valueIconContainer(
                          child: const Icon(
                            Icons.star_border_outlined,
                            color: AppColors.blackCircleColor,
                          ),
                          bgColor: AppColors.yellowStarColor,
                        ),
                        const Gap(4),
                        Text(
                          "${repo.stargazersCount}",
                          style: context.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Gap(24),
                    if (repo.language?.isNotEmpty == true) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "${repo.language}",
                            style: context.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Gap(4),
                          const Icon(
                            Icons.circle_outlined,
                            size: 15,
                            color: AppColors.blackCircleColor,
                          ),
                        ],
                      ),
                    ]
                  ],
                ),
              )),
        );
      },
    );
  }

  Widget valueIconContainer({
    required Widget child,
    required Color bgColor,
  }) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      )),
    );
  }
}
