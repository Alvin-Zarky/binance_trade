import 'package:binance_trade/screens/home_screen.dart';
import 'package:binance_trade/screens/overview_screen.dart';
import "package:flutter/material.dart";

class MainScreen extends StatefulWidget {
  static const String homeRoute = '/';
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isStarted = false;
  void onGetStarted() {
    setState(() => isStarted = true);
  }

  @override
  Widget build(BuildContext context) {
    if (isStarted) {
      return const HomeScreen();
    } else {
      return OverviewScreen(started: onGetStarted);
    }
  }
}
