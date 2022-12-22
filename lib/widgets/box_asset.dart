import 'package:binance_trade/utils/utilities.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class BoxAsset extends StatelessWidget {
  final String imagePath;
  final String title;
  final int price;
  final String amount;
  final int percentage;
  const BoxAsset({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.amount,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 198, 198, 198),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "lib/assets/icon/$imagePath",
                height: 50,
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                title.toUpperCase(),
                style: kTextTitleAssetBox,
              ),
            ],
          ),
          const SizedBox(
            height: 27,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "\$$price",
                    style: kTextTitleAssetBox,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    amount,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 137, 136, 136),
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 55,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(13, 7, 13, 7),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 141, 22, 177),
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    Text(
                      "$percentage%",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    const Icon(
                      Icons.assistant_navigation,
                      color: Colors.white,
                      size: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
