import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final void Function()? onTap;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;
  final Gradient ? gradient;
  final List<BoxShadow>? boxShadow;
  const FrostedGlass(
      {super.key,
      required this.height,
      required this.width,
      this.onTap,
      required this.child,
      this.borderRadius,
      this.border, this.gradient,
        this.boxShadow,});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ??
           BorderRadius.only(
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
                  border:border ?? Border.all(color: Colors.grey.withOpacity(0.8)),
                  borderRadius: borderRadius ??
                       BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),

                  boxShadow: boxShadow,
                  gradient:gradient ?? LinearGradient(
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
