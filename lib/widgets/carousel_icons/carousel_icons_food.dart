import 'package:flutter/material.dart';
import 'package:timeless/models/carousel_icons_food/carousel_icons_food.dart';

// ignore: must_be_immutable
class CarouselIconsFood extends StatelessWidget {
  List<CarouselTypesFood> typesList = [
    CarouselTypesFood(
      image: "kindpng.png",
      name: "Burguers",
    ),
    CarouselTypesFood(
      image: "hiclipart.com.png",
      name: "Pizza",
    ),
    CarouselTypesFood(
      image: "poutine.png",
      name: "Canadian",
    ),
    CarouselTypesFood(
      image: "pngwave.png",
      name: "Italian",
    ),
    CarouselTypesFood(
      image: "kindpng.png",
      name: "Burguers",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 12,
        bottom: 20,
      ),
      height: 90,
      child: ListView.builder(
        itemCount: typesList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Container(
              padding: const EdgeInsets.only(left: 12, right: 12),
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                //0xFFF3F3F3
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Image.asset(
                      "images/${typesList[index].image}",
                      height: 40,
                    ),
                  ),
                  Text(
                    typesList[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "montserrat",
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
