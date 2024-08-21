import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final void Function()? onTap;
  const FrostedGlass(
      {super.key,
      required this.height,
      required this.width,
      required this.onTap,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: height,
        width: width,
        color: Colors.transparent,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.8)),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.topCenter,
                      colors: [
                    Colors.black12.withOpacity(0.25),
                    Colors.black12.withOpacity(0.15)
                  ])),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
