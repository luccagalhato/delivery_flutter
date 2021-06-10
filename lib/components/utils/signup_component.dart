import 'package:flutter/material.dart';
import 'package:ns_utils/utils/sizes.dart';

class BackgroundImage extends StatelessWidget {
  final String image;
  final Color color;
  final Widget child;

  const BackgroundImage({
    Key key,
    this.image,
    this.child,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(image ?? "images/logo_signup.png"),
          fit: BoxFit.fill,
          // colorFilter: color != null
          //     ? ColorFilter.mode(
          //         color,
          //         BlendMode.color,
          //       )
          //     : null,
        ),
      ),
      child: child,
    );
  }
}

class IndicatorWidget extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const IndicatorWidget({Key key, this.height, this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Sizes.s15,
      width: width ?? Sizes.s15,
      child: Container(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(height ?? Sizes.s15)),
        ),
      ),
    );
  }
}
