import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class TextFeildSingInAndUpWidget extends StatelessWidget {
  TextFeildSingInAndUpWidget({
    super.key,
    required this.Label,
    required this.icon,
    required this.obscureText,
    @required this.suffixIcon,
  });

  String Label;
  Icon icon;
  bool obscureText;
  Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            icon,
            SizedBox(
              height: 45,
              child: VerticalDivider(
                thickness: 1.75,
                width: 35,
                color: Dark_50,
              ),
            ),
            Expanded(
                child: TextField(
              obscureText: obscureText,
              cursorColor: Dark,
              decoration: InputDecoration(
                labelText: Label,
                suffixIcon: suffixIcon,
                labelStyle: TextStyle(color: Dark, fontFamily: "font"),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: 1.75,
                  ),
                ),
                focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.75,
                  ),
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.75,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark_50,
                    width: 1.75,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
