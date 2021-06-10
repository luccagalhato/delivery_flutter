import 'package:flutter/material.dart';
import 'package:timeless/models/third_carousel_express.dart';

List<ThirdCarrouselExpress> expressList = [
  ThirdCarrouselExpress(
    name: "teste",
    image: "costco.png",
  ),
  ThirdCarrouselExpress(
    image: "safewaylogo.png",
    name: "teste",
  )
];

class ThirdCarouselExpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: expressList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 12, 20),
              child: Container(
                width: 225,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 1,
                        offset: const Offset(0, 2),
                      )
                    ]),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "images/${expressList[index].image}",
                        height: 175,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
