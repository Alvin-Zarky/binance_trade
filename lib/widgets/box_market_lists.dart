import 'package:binance_trade/screens/live_market_screen.dart';
import 'package:binance_trade/widgets/box_market.dart';
import "package:flutter/material.dart";

class BoxMarketLists extends StatelessWidget {
  const BoxMarketLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                  context, LiveMarketScreen.liveMarketScreenRoute);
            },
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
          GestureDetector(
            onTap: () {},
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
          GestureDetector(
            onTap: () {},
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
          GestureDetector(
            onTap: () {},
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
          GestureDetector(
            onTap: () {},
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
          GestureDetector(
            onTap: () {},
            child: const BoxMarket(
                title: "Binance",
                description: "BNB / USD",
                path: "ethereum.png",
                price: "407,89",
                percentage: 2.35),
          ),
        ],
      ),
    );
  }
}
