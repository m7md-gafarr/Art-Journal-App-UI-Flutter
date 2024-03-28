import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 125,
              child: Divider(
                color: Dark_50,
                thickness: 1.75,
                height: 30,
              ),
            ),
            Text(
              "   OR   ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 125,
              child: Divider(
                color: Dark_50,
                thickness: 1.75,
                height: 30,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Image.asset(
                "assets/icons/facebook.png",
                height: 35,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            InkWell(
              child: Image.asset(
                "assets/icons/google.png",
                height: 35,
              ),
            ),
            SizedBox(
              width: 25,
            ),
            InkWell(
              child: Image.asset(
                "assets/icons/apple-logo.png",
                height: 35,
              ),
            ),
          ],
        )
      ],
    );
  }
}
