import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pinput/pinput.dart';
import '../const.dart';
import '../Widget/ButtonWidget.dart';

class OTPSingUpPage extends StatelessWidget {
  const OTPSingUpPage({super.key});

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
                    "OTP CODE..",
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

              Text(
                "Enter the code send to the E-mail",
                style: TextStyle(
                  color: Dark,
                  fontFamily: "font",
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "User@email.com",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "font",
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 35),
              const Pinput(
                keyboardType: TextInputType.number,
              ),

              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Text(
                    "Didn't receive code?",
                    style: TextStyle(
                        fontFamily: "font", color: Dark, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text("Resend",
                        style: TextStyle(
                            color: Bright,
                            fontFamily: "font",
                            fontSize: 16,
                            decoration: TextDecoration.underline)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                label: "Check",
                onPressed: () {
                  Navigator.pushNamed(context, "PassSingUp");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
