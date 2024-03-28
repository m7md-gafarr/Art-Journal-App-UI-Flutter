import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../const.dart';
import '../Widget/ButtonWidget.dart';

class OTPSingUpPage extends StatelessWidget {
  const OTPSingUpPage({super.key});

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
              SizedBox(
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
              SizedBox(height: 10),
              Text(
                "User@email.com",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "font",
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 35),
              Pinput(
                keyboardType: TextInputType.number,
              ),

              SizedBox(
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
              SizedBox(
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
