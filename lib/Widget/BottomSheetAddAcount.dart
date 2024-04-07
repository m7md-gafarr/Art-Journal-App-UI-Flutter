import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';
import 'ButtonWidget.dart';

class BottomSheetAddAcountWidget extends StatelessWidget {
  const BottomSheetAddAcountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width - 100,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      )),
      child: Column(
        children: [
          const SizedBox(height: 5),
          Container(
            height: 4,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(6),
              ),
              color: Dark_50,
            ),
          ),
          const SizedBox(height: 5),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                "Accounts",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 21,
                    fontFamily: "font"),
              ),
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset("assets/images/user.png"),
              ),
              title: const Text("M2' Sokar",
                  style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: const Text("m7md_gafar"),
              trailing: const Icon(Iconsax.tick_circle, color: Colors.green),
            ),
          ),
          const Spacer(flex: 1),
          ButtonWidget(
            label: "Create a new account",
            onPressed: () {},
          ),
          const Spacer(flex: 1),
          ButtonWidget(
            label: "Add an existing account",
            onPressed: () {},
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
