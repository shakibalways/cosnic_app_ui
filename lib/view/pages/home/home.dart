import 'package:cosmic_app/components/frosted_glass.dart';
import 'package:cosmic_app/view/pages/home/widget/details_custom_container.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              "assets/images/splash/splash image.png",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    SafeArea(
                      child: FrostedGlass(
                        height: MediaQuery.of(context).size.height * 0.16,
                        width: MediaQuery.of(context).size.width,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Colors.black.withOpacity(0.0)),
                        gradient: LinearGradient(colors: [
                          Colors.black.withOpacity(0.30),
                          Colors.black.withOpacity(0.20)
                        ]),
                        child: Padding(
                          padding:
                          const EdgeInsets.only(top: 30, left: 25, right: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: const Icon(
                                  Icons.menu,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              const SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Milky Way",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    Text(
                                      "Solar System",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black,
                                ),
                                child: const Icon(
                                  Icons.perm_contact_cal_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(),
                  child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: 9,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        primary: false,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FrostedGlass(
                              height: 0,
                              width: MediaQuery.of(context).size.width / 3,
                              border: Border.all(
                                  color: Colors.black.withOpacity(0.0)),
                              borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                              gradient: LinearGradient(colors: [
                                Colors.black.withOpacity(0.35),
                                Colors.black.withOpacity(0.25)
                              ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.40),
                                  offset: const Offset(-10, -5),
                                  blurRadius: 10,
                                  spreadRadius: 10,
                                ),
                              ],
                              child: Row(
                                children: [
                                  Image.asset(
                                      "assets/images/planet/planet.png"),
                                  const Text(
                                    "Mercury",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const DetailsCustomContainer(),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
