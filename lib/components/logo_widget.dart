import 'package:flutter/material.dart';
import 'package:ns_utils/utils/sizes.dart';

class AppLogoWidget extends StatelessWidget {
  final double size;
  final String image;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const AppLogoWidget(
      {Key key, this.margin, this.padding, this.size, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: const Text("teste"),
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: padding ?? Sizes.smallSpace,
        child: Image(
          image: const AssetImage("images/art.png"),
          height: size ?? Sizes.s100,
          width: size ?? Sizes.s100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
