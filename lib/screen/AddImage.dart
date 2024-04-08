import 'package:art_journal/const.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Widget/DropDownTextField.dart';
import '../Widget/TextFeildAddImageWidget.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.close_square,
                      color: Bright,
                      size: 25,
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Bright,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30)))),
                    child: const Text(
                      "Post",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "font",
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
                child: Container(
                  width: double.maxFinite,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Dark_50.withOpacity(.3),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Bright,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                        ),
                        child: const Icon(
                          Iconsax.image4,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tap to upload",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "font",
                          color: Dark,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const DropDownTextFieldWidget(
                hintText: "Select Medium",
                dropDownList: [
                  DropDownValueModel(
                      name: "Pencil and Charcoal Drawing", value: "Medium1"),
                  DropDownValueModel(name: "Watercolors", value: "Medium2"),
                  DropDownValueModel(
                      name: "Acrylic or Oil Painting", value: "Medium3"),
                  DropDownValueModel(name: "Collage", value: "Medium4"),
                  DropDownValueModel(
                      name: "Paper Sculpture or Folding", value: "Medium1"),
                  DropDownValueModel(
                      name: "Arabic Calligraphy and Handwriting",
                      value: "Medium2"),
                  DropDownValueModel(
                      name: "Dry Media Drawing", value: "Medium3"),
                  DropDownValueModel(name: "Photography", value: "Medium4"),
                  DropDownValueModel(
                      name: "Experimentation and Mixing Techniques",
                      value: "Medium4"),
                  DropDownValueModel(
                      name: "Ornamentation and Decorations", value: "Medium4"),
                ],
              ),
              const SizedBox(height: 15),
              const TextFeildAddImageWidget(
                hintText: "Write Description...",
                maxLines: 6,
              ),
              const SizedBox(height: 30),

              // KeyboardVisibilityBuilder(
              //   builder: (context, isKeyboardVisible) {
              //     if (isKeyboardVisible == true) {
              //       return ButtonWidget(
              //         label: "Post",
              //         onPressed: () {},
              //       );
              //     } else {
              //       return const Text("");
              //     }
              //   },
              // ),
              SwitchButton(
                text: "Comment",
                value: _switch,
                fun: (p0) {
                  setState(() {
                    _switch = !_switch;
                  });
                },
              ),
              const SizedBox(height: 15),
              SwitchButton(
                text: "Repost",
                value: false,
                fun: (p0) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SwitchButton(
      {required String text,
      required bool value,
      required void Function(bool)? fun}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Dark,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              fontFamily: "font",
            ),
          ),
          Switch(
            value: value,
            onChanged: fun,
            activeColor: Colors.green,
          )
        ],
      ),
    );
  }
}
