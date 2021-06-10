import 'package:flutter/material.dart';

class SearchRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Text(
                  "Wellington St E, Toronto, ON M5E 1S2, CA",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 11,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(
                    Icons.location_on,
                    color: Color(0xFFC21D09),
                    size: 14,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff7F001D),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://static.wixstatic.com/media/872807_40734529bad34e75a4cc6f7a3bbabf7d~mv2.jpg/v1/fill/w_216,h_217,al_c,q_80,usm_0.66_1.00_0.01/105972708_2882530608541387_1927204334614.webp"),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey[350],
                          offset: const Offset(1, 4),
                        )
                      ],
                    ),
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32, left: 6),
                height: 30,
                width: 220,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                      ),
                      Expanded(
                        child: Material(
                          borderRadius: BorderRadius.circular(12),
                          child: TextField(
                            style: const TextStyle(
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 12, left: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: 'SEARCH',
                              filled: true,
                              hintStyle: const TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                                fontFamily: "Montserrat",
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
