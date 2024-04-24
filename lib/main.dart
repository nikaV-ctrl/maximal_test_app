import 'package:flutter/material.dart';
import 'package:max_app/app/di/init_di.dart';
import 'package:max_app/app/ui/main_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDi();
  runApp(const MainApp());
}
