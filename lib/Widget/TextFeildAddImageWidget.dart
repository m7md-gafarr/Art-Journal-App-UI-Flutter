import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class TextFeildAddImageWidget extends StatelessWidget {
  const TextFeildAddImageWidget(
      {super.key, required this.hintText, required this.maxLines});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        maxLength: 200,
        maxLines: maxLines,
        cursorColor: Dark,
        decoration: InputDecoration(
          filled: true,
          fillColor: Dark_50.withOpacity(.3),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Dark,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: "font",
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
