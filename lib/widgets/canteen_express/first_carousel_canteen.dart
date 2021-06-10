import 'package:flutter/material.dart';
import 'package:timeless/models/canteen_express/first_carousel_canteen.dart';

// ignore: must_be_immutable
class CarouselCanteen extends StatelessWidget {
  List<SecondCarouselCanteen> canteenList = [
    SecondCarouselCanteen(
      image: "starbucks-logo-png-1688.png",
    ),
    SecondCarouselCanteen(
      image: "starbucks-logo-png-1688.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: canteenList.length,
        itemBuilder: (_, index) {
          return Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 12,
                      right: 12,
                      bottom: 15,
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xFF197042),
                        image: DecorationImage(
                          image: AssetImage(
                            "images/${canteenList[index].image}",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
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
                    padding: EdgeInsets.only(top: 12, right: 12),
                    child: Text(
                      "Cappuccino, espresso\nand tea",
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
        },
      ),
    );
  }
}
