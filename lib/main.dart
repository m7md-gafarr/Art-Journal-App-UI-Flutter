import 'package:art_journal/screen/Home.dart';
import 'package:art_journal/screen/Login.dart';
import 'package:art_journal/screen/OTPEmailSingUp.dart';
import 'package:art_journal/screen/PassSingUP.dart';
import 'package:art_journal/screen/Profile.dart';
import 'package:art_journal/screen/SingUp.dart';
import 'package:art_journal/screen/intro.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(DevicePreview(
  //   builder: (context) => MAIN(),
  // ));
  runApp(const MAIN());
}

class MAIN extends StatelessWidget {
  const MAIN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LoginPage(),
        "singup": (context) => const SingUpPage(),
        "OTPSingUp": (context) => const OTPSingUpPage(),
        "PassSingUp": (context) => const PassWordSingUpPage(),
        "intro": (context) => introPage(),
        "home": (context) => HomePage(),
        "profile": (context) => const ProfileScreen(),
      },
      initialRoute: "home",
    );
  }
}
