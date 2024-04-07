import 'package:art_journal/Widget/Notification.dart';
import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Bright,
            fontWeight: FontWeight.w700,
            fontSize: 27,
            fontFamily: "font",
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          NotificationWidget(
            icon: Iconsax.user_add,
            color: Colors.blueAccent,
            Username: "m7md_gafar",
            action: "followed you",
          ),
          NotificationWidget(
            icon: Iconsax.repeat,
            color: Colors.lightGreen,
            Username: "m7md_gafar",
            action: "Repeat your post",
          ),
          NotificationWidget(
            icon: Iconsax.gallery_favorite,
            color: Colors.redAccent,
            Username: "m7md_gafar",
            action: "like your post",
          ),
          NotificationWidget(
            icon: Iconsax.user_add,
            color: Colors.blueAccent,
            Username: "m7md_gafar",
            action: "followed you",
          ),
          NotificationWidget(
            icon: Iconsax.repeat,
            color: Colors.lightGreen,
            Username: "m7md_gafar",
            action: "Repeat your post",
          ),
          NotificationWidget(
            icon: Iconsax.gallery_favorite,
            color: Colors.redAccent,
            Username: "m7md_gafar",
            action: "like your post",
          ),
          NotificationWidget(
            icon: Iconsax.user_add,
            color: Colors.blueAccent,
            Username: "m7md_gafar",
            action: "followed you",
          ),
          NotificationWidget(
            icon: Iconsax.repeat,
            color: Colors.lightGreen,
            Username: "m7md_gafar",
            action: "Repeat your post",
          ),
          NotificationWidget(
            icon: Iconsax.gallery_favorite,
            color: Colors.redAccent,
            Username: "m7md_gafar",
            action: "like your post",
          ),
          NotificationWidget(
            icon: Iconsax.user_add,
            color: Colors.blueAccent,
            Username: "m7md_gafar",
            action: "followed you",
          ),
          NotificationWidget(
            icon: Iconsax.repeat,
            color: Colors.lightGreen,
            Username: "m7md_gafar",
            action: "Repeat your post",
          ),
          NotificationWidget(
            icon: Iconsax.gallery_favorite,
            color: Colors.redAccent,
            Username: "m7md_gafar",
            action: "like your post",
          ),
          NotificationWidget(
            icon: Iconsax.user_add,
            color: Colors.blueAccent,
            Username: "m7md_gafar",
            action: "followed you",
          ),
          NotificationWidget(
            icon: Iconsax.repeat,
            color: Colors.lightGreen,
            Username: "m7md_gafar",
            action: "Repeat your post",
          ),
          NotificationWidget(
            icon: Iconsax.gallery_favorite,
            color: Colors.redAccent,
            Username: "m7md_gafar",
            action: "like your post",
          ),
        ],
      ),
    );
  }
}
