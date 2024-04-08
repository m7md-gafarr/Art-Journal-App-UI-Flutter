import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';
import '../Widget/TextFeildSingInAndUpWidget.dart';

class PassWordSingUpPage extends StatefulWidget {
  const PassWordSingUpPage({super.key});

  @override
  State<PassWordSingUpPage> createState() => _PassWordSingUpPageState();
}

class _PassWordSingUpPageState extends State<PassWordSingUpPage> {
  bool obscureText = false;

  _tolag() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Iconsax.back_square, color: Dark),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.width / 2 - 170),
              // App logo
              const Image(
                image: AssetImage(
                  "assets/Logos/Logo.png",
                ),
                height: 64,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create New Password",
                    style: TextStyle(
                      color: Dark_50,
                      fontFamily: "font1",
                      fontSize: 27,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              // Text Feild for user name or email
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "PASSWORD",
                obscureText: obscureText,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "CONFIRM PASSWORD",
                obscureText: obscureText,
              ),

              const SizedBox(
                height: 40,
              ),

              ButtonWidget(
                label: "Create New Password",
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
