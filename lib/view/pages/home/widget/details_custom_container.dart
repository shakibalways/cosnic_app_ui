import 'package:cosmic_app/components/frosted_glass.dart';
import 'package:cosmic_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';

class DetailsCustomContainer extends StatelessWidget {
  const DetailsCustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          FrostedGlass(
            height: MediaQuery.of(context).size.height / 3.3,
            width: MediaQuery.of(context).size.width / 1,
            border:
            Border.all(color: Colors.black12.withOpacity(0.2)),
            borderRadius:
            const BorderRadius.all(Radius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Planet of the day",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                "assets/images/planet/pla.png"),
                            const Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment:
                              MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Mars",
                                  style: TextStyle(
                                      color: Color(0xff00E5E5),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  "Mars is the fourth planet from\nthe Sunand the second-smallest\nplanet in the Solar System,only\nbeing largerthanMercury.In the\nEnglish language,\nMars is named for theRoman god of war.",
                                  style: TextStyle(
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Details",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_right_alt,
                              color: RColors.bColor,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          FrostedGlass(
            height: MediaQuery.of(context).size.height / 2.9,
            width: MediaQuery.of(context).size.width / 1,
            border:
            Border.all(color: Colors.black12.withOpacity(0.2)),
            borderRadius:
            const BorderRadius.all(Radius.circular(25)),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 25, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Solar System",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      "The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials.",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}