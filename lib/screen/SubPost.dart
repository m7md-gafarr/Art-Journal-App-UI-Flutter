import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';

class SubPostScreen extends StatelessWidget {
  const SubPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   icon: Icon(
          //     Icons.more_vert,
          //     color: Dark,
          //   ),
          // ),
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
              color: Dark,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: const Text("Save"),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.green,
                      shape: StadiumBorder(),
                      behavior: SnackBarBehavior.floating,
                      width: 150,
                      elevation: 3,
                      content: Center(child: Text("Photo saved.")),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Dark,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(8),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset("assets/images/user.png"),
            ),
            title: const Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "M2' Sokar",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            subtitle: const Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "m7md_gafar.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                    side: BorderSide(
                      width: 1,
                      color: Bright,
                    ),
                  ),
                ),
                child: Text(
                  "follow",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "font",
                    fontWeight: FontWeight.w600,
                    color: Bright,
                  ),
                ),
              ),
            ),
          ),
          Hero(
            tag: "imageid",
            child: InteractiveViewer(
              minScale: 0.1,
              maxScale: 2.5,
              child: Image.asset(
                "assets/images/photo2.jpg",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.heart,
                    color: Dark_50,
                  ),
                ),
                Text("125K", style: TextStyle(color: Dark)),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.repeat,
                    color: Dark_50,
                  ),
                ),
                Text("5K", style: TextStyle(color: Dark)),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.message_text,
                    color: Dark_50,
                  ),
                ),
                Text("7K", style: TextStyle(color: Dark)),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.save_2,
                    color: Dark_50,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
