import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';
import '../Widget/SocialWidget.dart';
import '../Widget/TextFeildSingInAndUpWidget.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

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
                    "SING UP...",
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
                height: 40,
              ),

              ButtonWidget(
                label: "Continue",
                onPressed: () => Navigator.pushNamed(context, "OTPSingUp"),
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
                    "I already have account?",
                    style: TextStyle(
                        fontFamily: "font", color: Dark, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text("Sing in",
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
