import 'package:art_journal/const.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
            height: 33,
            child: TextField(
              keyboardType: TextInputType.text,
              cursorColor: Dark,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.all(8),
                filled: true,
                fillColor: Dark_50.withOpacity(.3),
                suffixIcon: const Icon(Iconsax.search_normal),
                suffixIconColor: Bright,
                hintText: "Search Messages",
                hintStyle: TextStyle(
                  color: Dark,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontFamily: "font",
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Dark,
                    width: .2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Dark,
              ))
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Iconsax.back_square,
            color: Dark,
          ),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => ListTile(
          contentPadding: const EdgeInsets.all(8),
          onTap: () {},
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 25,
                child: Image.asset("assets/images/user.png"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 13,
                  width: 13,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.lightGreenAccent,
                      border: Border.all(width: 1, color: Colors.white)),
                ),
              )
            ],
          ),
          title: const Text(
            "M2' Sokar",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
          subtitle: const Text(" اهون عليكى تهونى عليا"),
          trailing: const Text("Sep 15,2019"),
          shape: Border(
              bottom: BorderSide(
            width: .5,
            color: Dark_50,
          )),
        ),
      ),
    );
  }
}
