import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import '../Widget/ButtonWidget.dart';
import '../Widget/SocialWidget.dart';
import '../Widget/TextFeildSingInAndUpWidget.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  late bool _obscureText;
  late bool _obscureText1;

  @override
  void initState() {
    _obscureText = false;
    _obscureText1 = false;
    super.initState();
  }

  _tolag() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  _tolag1() {
    setState(() {
      _obscureText1 = !_obscureText1;
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
                    "SING UP",
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
                height: 30,
              ),
              TextFeildSingInAndUpWidget(
                icon: Icon(Iconsax.password_check, color: Bright),
                Label: "CONFORM PASSWORD",
                obscureText: _obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    _tolag1();
                  },
                  icon: _obscureText1
                      ? Icon(Iconsax.eye, color: Dark)
                      : Icon(Iconsax.eye_slash, color: Dark_50),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              ButtonWidget(
                label: "Continue",
                onPressed: () => Navigator.pushNamed(context, "OTPSingUp"),
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
                    "I already have account?",
                    style: TextStyle(
                        fontFamily: "font", color: Dark, fontSize: 16),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStatePropertyAll(Dark_50.withOpacity(.2)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text(
                      "Sing in",
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
