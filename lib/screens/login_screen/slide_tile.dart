import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String image;
  final bool activePage;

  const SlideTile({Key key, this.image, this.activePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_this
    final double top = this.activePage ? 15 : 70;

    return AnimatedContainer(
      curve: Curves.easeInOutBack,
      margin: EdgeInsets.only(
        top: top,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          // ignore: unnecessary_this
          image: AssetImage(this.image),
        ),
      ),
      duration: const Duration(milliseconds: 500),
    );
  }
}
