import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final DecorationImage image;
  const CustomContainer({
    super.key,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: 60,
      width: 60,
      decoration:  BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
        image: image,
      ),
    );
  }
}