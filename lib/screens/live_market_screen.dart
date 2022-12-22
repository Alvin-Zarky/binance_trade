import 'package:binance_trade/utils/utilities.dart';
import 'package:binance_trade/widgets/box_asset_slides.dart';
import 'package:binance_trade/widgets/box_market_lists.dart';
import 'package:flutter/material.dart';

class LiveMarketScreen extends StatefulWidget {
  static const String liveMarketScreenRoute = '/market-detail';
  const LiveMarketScreen({Key? key}) : super(key: key);

  @override
  State<LiveMarketScreen> createState() => _LiveMarketScreenState();
}

class _LiveMarketScreenState extends State<LiveMarketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ),
                      Text(
                        "Live Market",
                        style: kTextTitlePartial.copyWith(
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Icon(
                        Icons.mail,
                        color: Colors.transparent,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.fromLTRB(20, 18, 20, 18),
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const BoxAssetSlides(),
                const SizedBox(
                  height: 35,
                ),
                const BoxMarketLists(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
