import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    100,
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                      "https://static.wixstatic.com/media/872807_40734529bad34e75a4cc6f7a3bbabf7d~mv2.jpg/v1/fill/w_216,h_217,al_c,q_80,usm_0.66_1.00_0.01/105972708_2882530608541387_1927204334614.webp",
                    ),
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.grey[350],
                      offset: const Offset(1, 4),
                    )
                  ],
                  color: Colors.blueAccent,
                ),
                height: 50,
                width: 50,
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 32, right: 15, left: 6),
              height: 30,
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
          ),
          const Padding(
            padding: EdgeInsets.only(right: 24, top: 33),
            child: Icon(
              Icons.add_shopping_cart,
              color: Color(0xff7F001D),
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
