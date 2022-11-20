import 'package:boss/common/Constant.dart';
import 'package:boss/splash/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryIconTheme: const IconThemeData(color: Colors.white),
          brightness: Brightness.light,
          primaryColor: Constant.mainThemeColor),
      home: const SplashPage(),
    );
  }
}