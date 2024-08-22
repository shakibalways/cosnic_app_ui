import 'package:cosmic_app/components/frosted_glass.dart';
import 'package:cosmic_app/view/pages/auth/login/widget/my_custom_button.dart';
import 'package:flutter/material.dart';

class Visit extends StatelessWidget {
  const Visit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/background/splash image.png",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FrostedGlass(
                      height: 60,
                      width: 60,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white.withOpacity(0.0)),
                      child: const Center(
                          child: Icon(
                        Icons.arrow_back_rounded,
                        size: 35,
                        color: Colors.white,
                      )),
                    ),
                    FrostedGlass(
                      height: 60,
                      width: 60,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white.withOpacity(0.0)),
                      child: const Center(
                          child: Icon(
                        Icons.favorite,
                        size: 35,
                        color: Colors.white,
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        FrostedGlass(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          border: Border.all(color: Colors.white.withOpacity(0.20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Earth",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/earth/cccc.png"),
                        const Text(
                          "   Mass\n(1024kg)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "5.97",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/earth/icon_xl (1).png"),
                        const Text(
                          "Gravity\n(m/s2)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "9.8",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/earth/icon_xl (2).png"),
                        const Text(
                          "   Day\n(hours)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "24",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset("assets/images/earth/icon_xl (3).png"),
                        const Text(
                          "Esc. Velocity\n      (km/s)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "11.2",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/earth/icon_xl.png"),
                        const Text(
                          "  Mean\nTemp(c)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "15",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("assets/images/earth/icon_xl (4).png"),
                        const Text(
                          textAlign: TextAlign.center,
                          "Distance from\nSun(106 km)",
                          style: TextStyle(color: Colors.white),
                        ),
                        const Text(
                          "24",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                MyCustomButton(

                  width: MediaQuery.of(context).size.width*0.35,
                  textName: "Visit",
                  borderRadius: BorderRadius.circular(25),
                  onTap: (){},
                ),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 540,
          child: Image.asset(
            "assets/images/earth/planets.png",
            height: 200,
            width: 200,
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    ));
  }
}
