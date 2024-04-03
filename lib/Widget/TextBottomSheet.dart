import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TextBottomSheetWidget extends StatelessWidget {
  const TextBottomSheetWidget(
      {super.key, required this.color, required this.text, required this.icon});
  final Color color;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 150,
            child: AutoSizeText(
              text,
              maxLines: 1,
              style: TextStyle(
                  fontSize: 19, fontWeight: FontWeight.w500, color: color),
            ),
          ),
          Icon(
            icon,
            color: color,
          )
        ],
      ),
    );
  }
}
