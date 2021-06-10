import 'package:flutter/material.dart';
import 'package:timeless/models/drawer_first_screen/main_drawer.dart';
import 'package:timeless/screens/first_screen/carousel_advertising_home/carousel_advertising_home.dart';
import 'package:timeless/screens/grocery_screen/search_grocery.dart';
import 'package:timeless/widgets/canteen_express/first_carousel_canteen.dart';
import 'package:timeless/widgets/carousel_healthy/carousel_healthy.dart';
import 'package:timeless/widgets/carousel_pet/carousel_pet.dart';
import 'package:timeless/widgets/stores_express/first_carousel_express.dart';
import 'package:timeless/widgets/stores_express/fourth_carousel.dart';
import 'package:timeless/widgets/stores_express/second_carousel_express.dart';
import 'package:timeless/widgets/stores_express/third_carousel.dart';

class ExpressScreen extends StatefulWidget {
  @override
  _ExpressScreenState createState() => _ExpressScreenState();
}

class _ExpressScreenState extends State<ExpressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.sort_outlined,
                size: 32,
              ),
              color: const Color(0xff7F001D),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: const Drawer(
        child: MainDrawer(),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchGrocery(),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 24),
                child: Text(
                  "Welcome to",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Montserrat",
                    fontSize: 25,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24, bottom: 20),
                child: Text(
                  "Grocery!",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              AdvertisingHome(),
              FirstCarouselExpress(),
              SecondCarouselExpress(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 16,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "Express",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ],
                ),
              ),
              FourthCarouselExpress(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 16,
                ),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "Popular Store",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ],
                ),
              ),
              ThirdCarouselExpress(),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: Text(
                  "Coffee",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              CarouselCanteen(),
              CarouselCanteen(),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Pet",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "PetSmart",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "The Dog",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Montserrat"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "The animal shopping",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                          fontFamily: "Montserrat"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "Friend",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselPet(),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Healthy life",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
                padding: EdgeInsets.only(
                  left: 24,
                ),
                child: Text(
                  "Pet",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "PetSmart",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "The Dog",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Montserrat"),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Text(
                      "The animal shopping",
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                          fontFamily: "Montserrat"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text(
                        "Friend",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
              ),
              CarouselPet(),
            ],
          ),
        ),
      ),
    );
  }
}
