import 'package:flutter/material.dart';

class DividerDrawer extends StatelessWidget {
  const DividerDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      indent: 20,
      endIndent: 20,
      color: Colors.white,
      thickness: .4,
      height: 40,
    );
  }
}
