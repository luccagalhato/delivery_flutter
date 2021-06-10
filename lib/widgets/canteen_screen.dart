import 'package:flutter/material.dart';

class CanteenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 15,
                bottom: 15,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                    "images/starbucks-logo-png-1688.png",
                  )),
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF197042),
                ),
                height: 80,
                width: 75,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "Starbucks",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "cappuccino, espresso\nand tea",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 15, bottom: 15),
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(
                "images/starbucks-logo-png-1688.png",
              )),
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF197042),
            ),
            height: 80,
            width: 75,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Text(
                "Starbucks",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text(
                "cappuccino, espresso\nand tea",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
