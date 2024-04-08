import 'package:art_journal/screen/EditProfile.dart';
import 'package:art_journal/screen/Home.dart';
import 'package:art_journal/screen/Login.dart';
import 'package:art_journal/screen/Message.dart';
import 'package:art_journal/screen/OTP.dart';
import 'package:art_journal/screen/PassSingUP.dart';
import 'package:art_journal/screen/Profile.dart';
import 'package:art_journal/screen/ResetPassword.dart';
import 'package:art_journal/screen/SingUp.dart';
import 'package:art_journal/screen/SubPost.dart';
import 'package:art_journal/screen/intro.dart';
import 'package:art_journal/screen/test.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(DevicePreview(
  //   builder: (context) => const MAIN(),
  // ));
  runApp(const MAIN());
}

class MAIN extends StatelessWidget {
  const MAIN({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LoginPage(),
        "singup": (context) => const SingUpPage(),
        "OTPSingUp": (context) => const OTPSingUpPage(),
        "PassSingUp": (context) => const PassWordSingUpPage(),
        "intro": (context) => const introPage(),
        "home": (context) => const HomePage(),
        "profile": (context) => const ProfileScreen(),
        "ResetPassword": (context) => const ResetPassword(),
        "MessageScreen": (context) => const MessageScreen(),
        "EditProfileScreen": (context) => const EditProfileScreen(),
        "SubPostScreen": (context) => const SubPostScreen(),
        "test": (context) => const test(),
      },
      initialRoute: "intro",
    );
  }
}
