import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';
import '../Widget/TextFeildSingInAndUpWidget.dart';

class PassWordSingUpPage extends StatelessWidget {
  const PassWordSingUpPage({super.key});

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
                    "Create Password.",
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
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "PASSWORD",
              ),
              SizedBox(
                height: 30,
              ),
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "CONFIRM PASSWORD",
              ),

              SizedBox(
                height: 40,
              ),

              ButtonWidget(
                label: "Create account",
                onPressed: () {
                  Navigator.pushNamed(context, "login");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
