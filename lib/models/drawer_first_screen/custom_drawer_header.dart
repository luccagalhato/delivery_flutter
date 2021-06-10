import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeless/models/user_manager.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        height: 185,
        child: Consumer<UserManager>(
          builder: (_, userManager, __) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(top: 32, left: 18),
                      child: Text(
                        "Welcome to",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat"),
                      ),
                    ),
                  ],
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Text(
                        "Timeless!",
                        style: TextStyle(
                          color: Color(0xff7F001D),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32, left: 18),
                  child: Text(
                    "Hello, ${userManager.user?.nickname ?? ''} ",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (userManager.isLoggedIn) {
                      userManager.signOut();
                    } else {
                      Navigator.of(context)
                          .pushReplacementNamed('/LoginScreen');
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Text(
                      userManager.isLoggedIn
                          ? "Logout"
                          : "Sign in or Register >",
                      style: const TextStyle(
                        color: Color(0xff7F001D),
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ));
  }
}
