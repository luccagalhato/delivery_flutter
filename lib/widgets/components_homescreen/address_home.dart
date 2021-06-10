import 'package:flutter/material.dart';

class AddressHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, top: 10, left: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "200 Wellington ST",
              style: TextStyle(
                color: Colors.black,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Icon(
                Icons.arrow_drop_down_circle,
                color: Colors.black,
                size: 8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 6,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 16,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey[350],
                            offset: const Offset(1, 3),
                          )
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(right: 2, left: 2),
                          child: Icon(Icons.access_time,
                              size: 12, color: Colors.black),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            bottom: 2,
                          ),
                          child: Text(
                            "Now",
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 2.0),
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 8,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
