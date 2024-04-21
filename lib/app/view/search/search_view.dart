import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:max_app/app/extension/context_extension.dart';

@RoutePage()
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  SearchViewState createState() => SearchViewState();
}

class SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.translate.search),
      ),
    );
  }
}
