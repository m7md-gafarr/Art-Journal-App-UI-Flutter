import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../const.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _controllerName;
  late TextEditingController _controllerusername;
  late TextEditingController _controllerBio;
  late TextEditingController _controllerWebsite;
  late TextEditingController _controllerBirthdate;

  @override
  void initState() {
    _controllerName = TextEditingController(text: "M2' Sokar");
    _controllerusername = TextEditingController(text: "m7md_gafar");
    _controllerBio = TextEditingController(
        text: "Software Engineer || Mobile App Developer");
    _controllerWebsite = TextEditingController(text: "");
    _controllerBirthdate = TextEditingController(text: "june 1,2003");

    super.initState();
  }

  @override
  void dispose() {
    _controllerBio.dispose();
    _controllerName.dispose();
    _controllerusername.dispose();
    _controllerWebsite.dispose();
    _controllerBirthdate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Save",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "font",
                  fontWeight: FontWeight.w600,
                  color: Bright,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        title: Text("Edit profile", style: TextStyle(color: Dark)),
        centerTitle: true,
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/user.png",
                  ),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.camera,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextfeiledWidget(
              labelText: "Name",
              maxLines: 1,
              controller: _controllerName,
            ),
            const SizedBox(height: 15),
            TextfeiledWidget(
              labelText: "Username",
              maxLines: 1,
              controller: _controllerusername,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  const Icon(Iconsax.link),
                  const SizedBox(
                    width: 7,
                  ),
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            backgroundColor: Colors.green,
                            shape: StadiumBorder(),
                            behavior: SnackBarBehavior.floating,
                            width: 150,
                            elevation: 3,
                            content: Center(child: Text("Link copied")),
                          ),
                        );
                      },
                      child: Text(
                        "artjournal.com/@m7md_gafar",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Dark),
                      )),
                ],
              ),
            ),
            const SizedBox(height: 25),
            TextfeiledWidget(
              labelText: "Bio",
              maxLines: 1,
              controller: _controllerBio,
              maxLength: 150,
            ),
            const SizedBox(height: 15),
            TextfeiledWidget(
              labelText: "Website",
              maxLines: 1,
              controller: _controllerWebsite,
            ),
            const SizedBox(height: 15),
            TextfeiledWidget(
              labelText: "Birth date",
              maxLines: 1,
              controller: _controllerBirthdate,
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget TextfeiledWidget(
      {required String labelText,
      required int maxLines,
      @required int? maxLength,
      required TextEditingController? controller}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextField(
        controller: controller,
        maxLength: maxLength,
        maxLines: maxLines,
        cursorColor: Dark,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Dark,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: "font",
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.blue),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(width: 2, color: Dark),
          ),
        ),
      ),
    );
  }
}
