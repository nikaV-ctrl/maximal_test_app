import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  UserViewState createState() => UserViewState();
}

class UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
