import 'package:flutter/material.dart';
import 'custom_drawer_header.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      CustomDrawerHeader(),
      const Divider(),
      const SizedBox(height: 20.0),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        title: const Text("Your Profile"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.credit_card,
          color: Colors.black,
        ),
        title: const Text("Timeless Pay"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.card_giftcard_rounded,
          color: Colors.black,
        ),
        title: const Text("Prime"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.card_giftcard_rounded,
          color: Colors.black,
        ),
        title: const Text("Rewards"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.fastfood,
          color: Colors.black,
        ),
        title: const Text("Orders"),
      ),
      ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.support_agent_outlined,
          color: Colors.black,
        ),
        title: const Text("Support"),
      ),
    ]);
  }
}
