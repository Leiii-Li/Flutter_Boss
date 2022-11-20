import 'dart:async';
import 'package:boss/common/Constant.dart';
import 'package:boss/main/HomePage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(microseconds: 1500), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) => const BoosApp()),
            (Route route) => route == null);
      } catch (e) {
        print("navigator to boos app error");
      }
    });
    print("init state schedule timer");
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return const Material(
        color: Constant.mainThemeColor,
        child: Padding(
            padding: EdgeInsets.only(top: 150.0),
            child: Text("Boos直聘",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))));
  }
}
