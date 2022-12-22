import 'package:binance_trade/utils/utilities.dart';
import "package:flutter/material.dart";

class BoxMarket extends StatelessWidget {
  final String title;
  final String description;
  final String path;
  final String price;
  final double percentage;
  const BoxMarket({
    Key? key,
    required this.title,
    required this.description,
    required this.path,
    required this.price,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 13, 15, 13),
      margin: const EdgeInsets.only(bottom: 35),
      decoration: BoxDecoration(
        color: const Color.fromARGB(168, 253, 253, 253),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.16),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(
              0,
              2,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // SvgPicture.asset(
              //   "lib/assets/icon/$path",
              //   height: 60,
              // ),
              Image(
                height: 45,
                image: AssetImage("lib/assets/icon/$path"),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: kTextTitleAssetBox.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 178, 178, 178),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "\$$price",
                style: kTextTitleAssetBox,
              ),
              const SizedBox(
                height: 13,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    Text(
                      "+$percentage%",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 173, 74, 213)),
                    ),
                    const Icon(
                      Icons.expand_less,
                      color: Color.fromARGB(255, 173, 74, 213),
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
