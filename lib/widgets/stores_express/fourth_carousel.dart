import 'package:flutter/material.dart';

class FourthCarouselExpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SafeArea(
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 140,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 12, 5),
              child: Container(
                width: 175,
                decoration: BoxDecoration(
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFFDFDFDF),
                      offset: Offset(1, 2),
                      blurRadius: 4,
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage("images/rabba.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13),
                ),
                child: GestureDetector(
                  onTap: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 20, 5),
              child: Container(
                width: 175,
                decoration: BoxDecoration(
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFFDFDFDF),
                      offset: Offset(1, 2),
                      blurRadius: 4,
                    )
                  ],
                  borderRadius: BorderRadius.circular(13),
                  image: const DecorationImage(
                    image: AssetImage("images/eleven.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
