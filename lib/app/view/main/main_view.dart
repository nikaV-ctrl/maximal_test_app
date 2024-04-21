import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:max_app/app/extension/context_extension.dart';
import 'package:max_app/app/routing/app_router.gr.dart';

@RoutePage()
class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => context.router.push(const SearchView()),
              child: Text(context.translate.search),
            ),
            FilledButton(
              onPressed: () {},
              child: Text(context.translate.auth),
            )
          ],
        ),
      )),
    );
  }
}
