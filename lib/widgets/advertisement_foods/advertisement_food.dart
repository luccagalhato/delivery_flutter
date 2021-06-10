import 'package:flutter/material.dart';

class AdvertisementFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
      child: Container(
        height: 145,
        width: 350,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("images/korean_food.png"),
            alignment: Alignment.centerRight,
          ),
          color: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey[400],
              offset: const Offset(1, 2),
            )
          ],
        ),
        padding: const EdgeInsets.only(top: 5, left: 12),
        child: Column(
          children: <Widget>[
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "5,0",
                    style: TextStyle(
                      color: Color(0xffFED202),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 2),
                const Icon(
                  Icons.star,
                  color: Color(0xffFED202),
                  size: 13,
                )
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(left: 6, top: 5),
                  child: Text(
                    "Top of the Week",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
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
                  padding: EdgeInsets.only(left: 6, top: 5),
                  child: Text(
                    "Cream Cheese",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
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
                  padding: EdgeInsets.only(left: 6),
                  child: Text(
                    "Philadelphia",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                  ),
                  child: ButtonTheme(
                    height: 22,
                    minWidth: 25,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500)),
                      color: const Color(0xff7F001D),
                      onPressed: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 7,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
