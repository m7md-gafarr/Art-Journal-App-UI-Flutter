import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class drawerlisttile extends StatelessWidget {
  const drawerlisttile({super.key, required this.Label, required this.icon});
  final IconData? icon;
  final String Label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 27,
      ),
      title: AutoSizeText(
        Label,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "font",
          fontWeight: FontWeight.w500,
          fontSize: 21,
        ),
        maxLines: 1,
      ),
    );
  }
}
