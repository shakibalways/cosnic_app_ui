import 'package:cosmic_app/components/bottom_nav_bar.dart';
import 'package:cosmic_app/view/pages/auth/login/sign_in.dart';
import 'package:cosmic_app/view/pages/home/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}
