import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeless/models/user_manager.dart';

// ignore: must_be_immutable
class WelcomeRestaurant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        width: 400,
        child: Consumer<UserManager>(
          builder: (_, userManager, __) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 18, top: 18),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        "Hi, ",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      Text(
                        // ignore: unnecessary_string_interpolations
                        "${userManager.user?.nickname ?? ''}",
                        style: const TextStyle(
                          fontSize: 22,
                          color: Color(0xff7F001D),
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18, top: 4),
                  child: Text(
                    "Have nice day!",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: "Montserrat",
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(
                //     left: 30,
                //     right: 30,
                //     top: 20,
                //     bottom: 15,
                //   ),
                //   child: Row(
                //     children: <Widget>[
                //       Expanded(
                //           child: Container(
                //         padding: const EdgeInsets.only(
                //           left: 25.0,
                //           right: 25.0,
                //         ),
                //         height: 45,
                //         child: Center(
                //           child: Row(
                //             children: <Widget>[
                //               const Padding(
                //                 padding: EdgeInsets.only(right: 8.0),
                //               ),
                //               Expanded(
                //                 child: Material(
                //                   borderRadius: BorderRadius.circular(20),
                //                   child: TextField(
                //                     keyboardType: TextInputType.text,
                //                     decoration: InputDecoration(
                //                       contentPadding:
                //                           const EdgeInsets.only(top: 20),
                //                       prefixIcon: const Icon(
                //                         Icons.search,
                //                         size: 20,
                //                         color: Colors.black,
                //                       ),
                //                       border: OutlineInputBorder(
                //                         borderSide: BorderSide.none,
                //                         borderRadius: BorderRadius.circular(20),
                //                       ),
                //                       hintText: 'Search',
                //                       filled: true,
                //                       hintStyle: const TextStyle(
                //                           color: Colors.black38),
                //                     ),
                //                   ),
                //                 ),
                //               )
                //             ],
                //           ),
                //         ),
                //       )),
                //     ],
                //   ),
                // ),
              ],
            );
          },
        ));
  }
}
