import 'package:flutter/material.dart';

import '../Widget/post.dart';

class GridImageHome extends StatelessWidget {
  const GridImageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 4.0, left: 4, right: 4),
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => const PostWidget()));
  }
}
