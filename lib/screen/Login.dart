import 'package:art_journal/Widget/SocialWidget.dart';
import 'package:art_journal/Widget/TextFeildSingInAndUpWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    _obscureText = false;
    super.initState();
  }

  late bool _obscureText;

  _tolag() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
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
                    "SING IN....",
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
                height: 25,
              ),

              // Text Feild for user name or email
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.direct_right, color: Bright),
                Label: "E-MAIL",
                obscureText: _obscureText,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "PASSWORD",
                obscureText: _obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    _tolag();
                  },
                  icon: _obscureText
                      ? Icon(Iconsax.eye, color: Dark)
                      : Icon(Iconsax.eye_slash, color: Dark_50),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Dark_50.withOpacity(.2)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "ResetPassword");
                    },
                    child: Text(
                      "Forgot password ?",
                      style: TextStyle(
                        color: Dark,
                        fontSize: 15,
                        fontFamily: "font",
                      ),
                    ),
                  ),
                ),
              ),
              ButtonWidget(
                label: "Sing in",
                onPressed: () {
                  Navigator.pushNamed(context, "home");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const SocialWidget(),
              const SizedBox(
                height: 7,
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
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Dark_50.withOpacity(.2)),
                    ),
                    child: Text(
                      "Sing up",
                      style: TextStyle(
                          color: Bright, fontFamily: "font", fontSize: 16),
                    ),
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
