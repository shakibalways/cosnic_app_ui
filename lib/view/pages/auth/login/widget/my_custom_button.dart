import 'package:cosmic_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final double ? height;
  final double ? width;
  final String ? textName;
  final void Function()? onTap;

  const MyCustomButton({
    super.key,
     this.height,
     this.width,
     this.textName,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? MediaQuery.of(context).size.height * 0.06,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            colors: [
              RColors.buColors,
              RColors.bColors,
              RColors.bColor,
            ],
          ),
        ),
        child: Center(
          child: Text(
            textName ?? "Sign in",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
