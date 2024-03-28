import 'package:art_journal/Widget/SocialWidget.dart';
import 'package:art_journal/Widget/TextFeildSingInAndUpWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 130),
              // App logo
              Image(
                image: AssetImage(
                  "assets/Logos/Logo.png",
                ),
                height: 64,
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "SING IN...",
                    style: TextStyle(
                      color: Dark_50,
                      fontFamily: "font1",
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),

              // Text Feild for user name or email
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.direct_right, color: Bright),
                Label: "E-MAIL",
              ),
              SizedBox(
                height: 30,
              ),
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "PASSWORD",
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password ?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "font",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ButtonWidget(
                label: "Sing in",
                onPressed: () {},
              ),
              SizedBox(
                height: 30,
              ),
              SocialWidget(),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontFamily: "font", color: Dark, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "singup");
                    },
                    child: Text("Sing up",
                        style: TextStyle(
                            color: Bright, fontFamily: "font", fontSize: 16)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
