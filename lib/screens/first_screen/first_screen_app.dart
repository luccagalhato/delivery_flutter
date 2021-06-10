import 'package:flutter/material.dart';
import 'package:timeless/widgets/carousel_products.dart/carousel_products.dart';
import 'package:timeless/widgets/components_homescreen/address_home.dart';
import 'package:timeless/widgets/canteen_express/first_carousel_canteen.dart';
import 'package:timeless/widgets/carousel_healthy/carousel_healthy.dart';
import 'package:timeless/widgets/components_homescreen/profile_home.dart';
import 'package:timeless/widgets/featured.products.dart';
import 'package:timeless/widgets/order_again/carousel_are_you_hurry.dart';
import 'package:timeless/widgets/order_again/carousel_order_again.dart';
import 'package:timeless/widgets/stores_express/first_carousel_express.dart';
import 'package:timeless/widgets/stores_express/second_carousel_express.dart';
import 'package:timeless/widgets/welcome_restaurant.screen.dart';
import 'carousel_advertising_home/carousel_advertising_home.dart';
import 'categories_advertising/carousel_categories_advertising.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AddressHome(),
            ProfileHome(),
            const SizedBox(height: 10),
            WelcomeRestaurant(),
            CarouselProducts(),
            const SizedBox(height: 10),
            CarouselAdvertising(),
            const SizedBox(height: 5),
            AdvertisingHome(),
            const SizedBox(height: 20),
            Featured(),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 18.0),
                        child: Text(
                          "Order Again",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ),
                    ],
                  ),
                  OrderAgain(),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            FirstCarouselExpress(),
            SecondCarouselExpress(),
            const SizedBox(height: 5),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.grey[300],
                  offset: const Offset(1, 4),
                )
              ]),
              height: 220,
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            "Are you in a hurry?",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                      ],
                    ),
                    CarouselouHurry(),
                    CarouselouHurry()
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 6),
              child: Text(
                "Healthy life",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            CarouselHealthy(),
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18, top: 6),
              child: Text(
                "Coffee",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                ),
              ),
            ),
            CarouselCanteen(),
            CarouselCanteen(),
          ],
        ),
      ),
    );
  }
}
