import 'package:flutter/material.dart';
import 'package:timeless/models/carousel_order/carousel_you_hurry.dart';

// ignore: must_be_immutable
class CarouselouHurry extends StatelessWidget {
  List<CarouselYouHurry> hurryList = [
    CarouselYouHurry(
      image: "hamb.jpg",
    ),
    CarouselYouHurry(
      image: "hamb.jpg",
    ),
    CarouselYouHurry(
      image: "hamb.jpg",
    ),
    CarouselYouHurry(
      image: "hamb.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 90,
      child: ListView.builder(
        itemCount: hurryList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12, top: 12),
                      // ignore: sized_box_for_whitespace
                      child: Container(
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "images/${hurryList[index].image}",
                              height: 75,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                        left: 4,
                      ),
                      child: Text(
                        "The Black Beef",
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4, left: 4),
                      child: Text(
                        "Burguers",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 4, left: 4),
                          child: Text(
                            "30 min",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4, left: 12),
                          child: Text(
                            "4,8",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Icon(
                            Icons.star,
                            size: 12,
                            color: Color(0xFFB26578),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
