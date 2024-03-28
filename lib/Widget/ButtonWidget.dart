import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({super.key, required this.label, this.onPressed});
  String label;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(label),
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: White,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          backgroundColor: Bright,
          fixedSize: Size(double.maxFinite, 45),
        ),
      ),
    );
  }
}
