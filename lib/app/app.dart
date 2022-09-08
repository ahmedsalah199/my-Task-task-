import 'package:flutter/material.dart';
import 'package:my_task/presentation/screens/home_screen.dart';

import '../config/theme_app.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();
  static const _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: HomeScreen(),
    );
  }
}
