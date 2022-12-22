import "package:flutter/material.dart";

class BoxCategory extends StatelessWidget {
  final String path;
  final String title;
  const BoxCategory({
    Key? key,
    required this.path,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          height: 55,
          image: AssetImage("lib/assets/icon/$path"),
        ),
        const SizedBox(
          height: 13,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: "Poppins",
          ),
        ),
      ],
    );
  }
}
