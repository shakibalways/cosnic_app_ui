import 'package:cosmic_app/components/frosted_glass.dart';
import 'package:cosmic_app/utils/const/color_code.dart';
import 'package:cosmic_app/view/pages/auth/login/widget/my_email_field.dart';
import 'package:cosmic_app/view/pages/auth/login/widget/my_password_field.dart';
import 'package:cosmic_app/view/pages/auth/login/widget/custom_container.dart';
import 'package:cosmic_app/view/pages/auth/login/widget/my_custom_button.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
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
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
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
                        const SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyEmailField(
                              labelText: 'E-mail',
                              controller: emailController,
                            ),
                            const SizedBox(height: 30),
                            MyPasswordField(
                              labelText: 'Password',
                              controller: passController,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(
                                      color: Color(int.parse(RColors.tColors))),
                                )),
                          ],
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyCustomButton(),
                            SizedBox(height: 20),
                            Text("or sign in using"),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomContainer(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/vector/twiter.png"))),
                            CustomContainer(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/vector/facebook.png"))),
                            CustomContainer(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/vector/google.png"))),
                          ],
                        ),
                        const SizedBox(height: 50),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?",
                                style: TextStyle(color: Colors.grey)),
                            Text("Sign Up?",
                                style: TextStyle(color: RColors.bColor))
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
