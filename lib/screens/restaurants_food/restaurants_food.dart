import 'package:flutter/material.dart';
import 'package:timeless/widgets/advertisement_foods/advertisement_food.dart';
import 'package:timeless/widgets/carousel_icons/carousel_icons_food.dart';
import 'package:timeless/widgets/order_again/carousel_order_again.dart';
import 'package:timeless/widgets/search_restaurant/search_restaurant.dart';
import 'package:timeless/widgets/widgets_restaurants/carousel_services_restaurant.dart';
import 'package:timeless/widgets/widgets_restaurants/selected_foods.dart';

class RestaurantsFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchRestaurant(),
            const SizedBox(height: 30),
            CarouselServicesRestaurant(),
            CarouselIconsFood(),
            AdvertisementFood(),
            const SizedBox(height: 10),
            SelectedFoods(),
            const SizedBox(height: 10),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
            OrderAgain(),
            const SizedBox(height: 10),
            const Divider(
              endIndent: 20,
              indent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
