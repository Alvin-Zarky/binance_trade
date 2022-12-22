import 'package:binance_trade/utils/utilities.dart';
import 'package:binance_trade/widgets/box_category.dart';
import 'package:binance_trade/widgets/box_asset_slides.dart';
import 'package:binance_trade/widgets/box_market_lists.dart';
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndexNavigate = 0;
  void navigateLink(int index) {
    setState(() => currentIndexNavigate = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndexNavigate,
        backgroundColor: const Color.fromARGB(255, 133, 79, 184),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                color: Colors.white,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 181, 106, 222),
                        Color.fromARGB(255, 149, 65, 194),
                      ],
                    ),
                  ),
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 90),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Welcome Back!",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Roboto",
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Alvin",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Inter",
                                        letterSpacing: 0.7,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundColor: Colors.white,
                                      child: Image(
                                        image: AssetImage(
                                            'lib/assets/icon/guy.png'),
                                        fit: BoxFit.contain,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: const [
                                    Text(
                                      "\$32,761.65",
                                      style: kTextTitle,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Updated 2 min ago",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 215, 215, 215),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(13, 7, 13, 7),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 141, 22, 177),
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Row(
                                    children: const [
                                      Text(
                                        "20%",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Icon(
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
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 217),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(
                              0,
                              3,
                            ),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 21, 40, 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            BoxCategory(
                                path: "bitcoin-wallet.png", title: "Top Up"),
                            BoxCategory(path: "bank.png", title: "Buy"),
                            BoxCategory(path: "static.png", title: "Withdraw"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("My Asset", style: kTextTitlePartial),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const BoxAssetSlides(),
                  Container(
                    margin: const EdgeInsets.only(top: 35, bottom: 23),
                    child: const Text("Market", style: kTextTitlePartial),
                  ),
                  const BoxMarketLists(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
