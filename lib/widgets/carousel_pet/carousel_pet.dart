import 'package:flutter/material.dart';
import 'package:timeless/models/carousel_pet/first_carousel_pet.dart';

// ignore: must_be_immutable
class CarouselPet extends StatelessWidget {
  List<FirstCarouselPet> petList = [
    FirstCarouselPet(
      image: "dog1.png",
    ),
    FirstCarouselPet(
      image: "dog.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 128,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: petList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 6, 20),
            // ignore: sized_box_for_whitespace
            child: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 1,
                  offset: const Offset(0, 2),
                )
              ]),
              width: 275,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/${petList[index].image}",
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
