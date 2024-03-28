import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class TextFeildSingInAndUpWidget extends StatelessWidget {
  TextFeildSingInAndUpWidget(
      {super.key, required this.Label, required this.icon});

  String Label;
  Icon icon;

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
              cursorColor: Dark,
              decoration: InputDecoration(
                labelText: Label,
                labelStyle: TextStyle(color: Dark, fontFamily: "font"),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: 1.75,
                  ),
                ),
                focusedErrorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 1.75,
                  ),
                ),
                errorBorder: UnderlineInputBorder(
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
