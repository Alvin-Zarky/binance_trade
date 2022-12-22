import 'package:binance_trade/screens/live_market_screen.dart';
import 'package:binance_trade/screens/main_screen.dart';
import 'package:flutter/material.dart';
import "package:flutter/services.dart";

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binance Trading',
      debugShowCheckedModeBanner: false,
      initialRoute: MainScreen.homeRoute,
      routes: {
        MainScreen.homeRoute: (context) => const MainScreen(),
        LiveMarketScreen.liveMarketScreenRoute: (context) =>
            const LiveMarketScreen()
      },
    );
  }
}
