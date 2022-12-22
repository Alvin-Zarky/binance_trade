import 'package:binance_trade/utils/utilities.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class OverviewScreen extends StatefulWidget {
  final VoidCallback started;
  const OverviewScreen({
    Key? key,
    required this.started,
  }) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              // Color.fromARGB(255, 55, 157, 240),
              // Color.fromARGB(255, 43, 106, 223),
              // Color.fromARGB(255, 14, 91, 180)
              Color.fromARGB(255, 210, 148, 244),
              // Color.fromARGB(255, 169, 95, 208),
              Color.fromARGB(255, 181, 106, 222),
              Color.fromARGB(255, 149, 65, 194),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 140),
                    child: SvgPicture.asset(
                      "lib/assets/img/overview.svg",
                      height: 270,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 120, bottom: 40),
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 35),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(78, 222, 222, 222),
                          Color.fromARGB(78, 222, 222, 222),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Buy And Trade Top Cyptocurrencies",
                          style: kTextTitle,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "You can trade and buy and sell crypto coins here very easily and reliable",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Lato",
                            fontSize: 15,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: widget.started,
                          child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(17),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                color: Color.fromARGB(255, 119, 62, 163),
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
