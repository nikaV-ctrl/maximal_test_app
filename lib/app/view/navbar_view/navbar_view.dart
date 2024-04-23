import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:max_app/app/extension/context_extension.dart';
import 'package:max_app/app/routing/app_router.gr.dart';
import 'package:max_app/app/value/colors/app_colors.dart';

@RoutePage()
class NavBarView extends StatelessWidget {
  const NavBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [SearchView(), AuthView()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          selectedItemColor: AppColors.deepBlueColor,
          unselectedFontSize: 10,
          selectedFontSize: 10,
          iconSize: 24,
          selectedLabelStyle: const TextStyle(
            color: AppColors.deepBlueColor,
          ),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: AppColors.grey,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: context.translate.search,
              icon: const Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: context.translate.auth,
              icon: const Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
