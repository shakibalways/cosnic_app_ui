import 'package:cosmic_app/view/pages/auth/login/sign_in.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    goToNextScreen();
    super.initState();
  }
// next screen function
  goToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/images/background/splash image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),

          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image.asset("assets/images/splash/v3.png"),
              Image.asset("assets/images/splash/v1.png"),
              Positioned(
                  bottom: 0,
                  top: 12,
                  child: Image.asset("assets/images/splash/v.png")),
              Image.asset("assets/images/splash/v2.png"),
              const Text(
                "cosmic",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              const Positioned(
                top: 350,
                left: 100,
                right: 0,
                bottom: 0,
                child: Text(
                  "Free Mobile App UI",
                  style: TextStyle(color: Colors.white38, fontSize: 18),
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 70,
            child: Text(
              "Earth App",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
