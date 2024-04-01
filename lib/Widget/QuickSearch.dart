import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';

class QuickSearchWidget extends StatelessWidget {
  const QuickSearchWidget({super.key, required this.Label});
  final String Label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          color: Dark_50.withOpacity(.3),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              Label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "font",
                color: Dark,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
