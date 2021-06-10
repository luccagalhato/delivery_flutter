import 'package:flutter/material.dart';
import 'package:timeless/models/healthy_carousel/first_carousel_healthy.dart';

// ignore: must_be_immutable
class CarouselHealthy extends StatelessWidget {
  List<FirstCarouselHealthy> healthyList = [
    FirstCarouselHealthy(
      image: "save_foods.png",
    ),
    FirstCarouselHealthy(
      image: "wall.png",
    ),
    FirstCarouselHealthy(
      image: "save_foods.png",
    ),
    FirstCarouselHealthy(
      image: "wall.png",
    ),
    FirstCarouselHealthy(
      image: "save_foods.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: healthyList.length,
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
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image:
                              AssetImage("images/${healthyList[index].image}"),
                        ),
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
