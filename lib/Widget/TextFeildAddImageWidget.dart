import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class TextFeildAddImageWidget extends StatelessWidget {
  const TextFeildAddImageWidget(
      {super.key, required this.labelText, required this.maxLines});
  final String labelText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        maxLines: maxLines,
        cursorColor: Dark,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Dark,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: "font",
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Dark,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Dark,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
