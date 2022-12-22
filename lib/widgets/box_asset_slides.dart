import 'package:binance_trade/widgets/box_asset.dart';
import "package:flutter/material.dart";

class BoxAssetSlides extends StatelessWidget {
  const BoxAssetSlides({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 23),
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          BoxAsset(
            title: "Sol/Bnb",
            imagePath: "binance.svg",
            price: 250,
            amount: "0.40340 BNB",
            percentage: 20,
          ),
          BoxAsset(
            title: "ML/KNN",
            imagePath: "binance.svg",
            price: 350,
            amount: "0.40340 BNB",
            percentage: 50,
          ),
          BoxAsset(
            title: "KNK/KSK",
            imagePath: "binance.svg",
            price: 220,
            amount: "0.40340 BNB",
            percentage: 40,
          ),
        ],
      ),
    );
  }
}
