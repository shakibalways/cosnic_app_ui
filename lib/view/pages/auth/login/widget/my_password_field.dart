import 'package:flutter/material.dart';

class MyPasswordField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const MyPasswordField({
    super.key, required this.labelText, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.black,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white))),
    );
  }
}