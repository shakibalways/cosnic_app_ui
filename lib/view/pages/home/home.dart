import 'package:cosmic_app/components/frosted_glass.dart';
import 'package:cosmic_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          const Positioned(
            bottom: 0,
            top: 40,
            child: Text(
              "cosmic",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              FrostedGlass(
                height: MediaQuery.of(context).size.height * 0.70,
                width: MediaQuery.of(context).size.width,
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25,top: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                        const Text(
                          "Sign in",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                    
                          children: [
                          TextField(
                            decoration: InputDecoration(
                                labelText: "E-mail",
                                labelStyle: const TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.black,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(color: Colors.white))),
                          ),
                    const SizedBox(height: 30,),
                          TextField(
                            decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: const TextStyle(color: Colors.grey),
                                filled: true,
                                fillColor: Colors.black,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(color: Colors.white))),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password",
                                style: TextStyle(
                                    color: Color(int.parse(RColors.tColors))),
                              )),
                        ],),
                    
                    
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width,
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
                            child: const Center(
                              child: Text("Sign in",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22
                              ),),
                            ),
                          ),
                            const SizedBox(height: 20,),
                          const Text("or sign in using"),
                        ],),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/vector/twiter.png"))
                              ),
                    
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                  color: Colors.black,
                                shape: BoxShape.circle,
                                image: DecorationImage(image: AssetImage("assets/images/vector/facebook.png"))
                              ),
                    
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                             color: Colors.black,
                                shape: BoxShape.circle,
                                  image: DecorationImage(image: AssetImage("assets/images/vector/google.png"))
                              ),
                    
                            ),
                          ],
                        ),
                        const SizedBox(height: 50,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",style:TextStyle(
                              color: Colors.grey
                            ) ,),
                            Text(
                              "Sign Up?",
                              style: TextStyle(color: RColors.bColor),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
