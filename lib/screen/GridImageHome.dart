import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Widget/post.dart';

class GridImageHome extends StatelessWidget {
  const GridImageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, left: 4, right: 4),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            floating: true,
            stretch: true,
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      maxRadius: 15,
                      backgroundColor: Colors.transparent,
                      child: Image.asset("assets/images/user.png"),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/Logos/Intersect.png",
                  height: 37,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "MessageScreen");
                    },
                    icon: Icon(
                      Iconsax.message,
                      color: Bright,
                    ))
              ],
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => const PostWidget(),
          )

          // SliverToBoxAdapter(
          //   child: ListView.builder(
          //       physics: const BouncingScrollPhysics(),
          //       itemBuilder: (context, index) => const PostWidget()),
          // ),
        ],
      ),
    );
  }
}
