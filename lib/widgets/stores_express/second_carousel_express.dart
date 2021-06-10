import 'package:flutter/material.dart';

class SecondCarouselExpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return SafeArea(
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 135,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 12, 10),
              child: Container(
                width: 175,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("images/sobeys_logo.jpg"),
                  ),
                  color: const Color(0xFF45A247),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 13,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Text(
                              "Today, before 1pm",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 7.0,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 20, 10),
              child: Container(
                width: 175,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: AssetImage("images/nofrills.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          height: 13,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: const Center(
                            child: Text(
                              "Today, before 1pm",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                fontSize: 7.0,
                              ),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
