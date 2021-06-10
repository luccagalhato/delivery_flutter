import 'package:flutter/material.dart';
import 'package:timeless/models/products.dart';
import 'package:timeless/screens/Restaurants_food/restaurants_food.dart';

List<Product> productsList = [
  Product(
      name: "Restaurants",
      deliveryprice: 0.49,
      vendor: "KoreanFood",
      image: "korean_food.png"),
  Product(
      name: "Drinks&Wine",
      deliveryprice: 0.49,
      vendor: "KoreanFood",
      image: "wine_glass.png"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 285,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        offset: const Offset(0, 2),
                      )
                    ]),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RestaurantsFood(),
                      ),
                    );
                  },
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        fit: BoxFit.cover,
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              productsList[index].name,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Icon(
                              Icons.access_time,
                              size: 11,
                            ),
                          ),
                          const SizedBox(width: 2),
                          const Text(
                            "25-50 min",
                            style: TextStyle(
                              fontSize: 8,
                              fontFamily: "Montserrat",
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text(
                              "Delivery fee:",
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: 9,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                          const SizedBox(width: 2),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              "\$${productsList[index].deliveryprice}",
                              style: TextStyle(
                                fontSize: 9,
                                fontFamily: "Montserrat",
                                color: Colors.grey[500],
                              ),
                            ),
                          )
                        ],
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
