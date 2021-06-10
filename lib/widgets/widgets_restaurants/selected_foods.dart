import 'package:flutter/material.dart';
import 'package:timeless/models/selected_products.dart';

List<SelectedProducts> selectedproducts = [
  SelectedProducts(
    name: "Brasil Pizzas",
    image: "pizza.png",
  ),
  SelectedProducts(
    name: "Brasil Pizzas",
    image: "pizza.png",
  ),
  SelectedProducts(
    name: "Brasil Pizzas",
    image: "pizza.png",
  ),
];

class SelectedFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 186,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: selectedproducts.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 6,
                        offset: const Offset(1, 1),
                      )
                    ]),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "images/${selectedproducts[index].image}",
                          width: 165,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                selectedproducts[index].name,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Montserrat",
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 27),
                                child: Text(
                                  "4,8",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffFED202),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color(0xffFED202),
                                size: 10,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "All flavors",
                                style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 9,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 77),
                                child: Icon(
                                  Icons.my_location_rounded,
                                  color: Color(0xffD09794),
                                  size: 9,
                                ),
                              ),
                              const Text(
                                " 3 Km",
                                style: TextStyle(
                                    fontSize: 9,
                                    color: Color(0xffD09794),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
