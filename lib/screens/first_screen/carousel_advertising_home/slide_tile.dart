import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  final String image;
  final bool activePage;

  const SlideTile({Key key, this.image, this.activePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_this

    return AnimatedContainer(
      curve: Curves.easeInExpo,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            // ignore: unnecessary_this
            this.image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      duration: const Duration(
        milliseconds: 800,
      ),
    );
  }
}
