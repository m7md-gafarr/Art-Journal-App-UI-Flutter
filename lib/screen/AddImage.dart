import 'package:art_journal/const.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Widget/ButtonWidget.dart';
import '../Widget/DropDownTextField.dart';
import '../Widget/TextFeildAddImageWidget.dart';

class AddImage extends StatefulWidget {
  const AddImage({super.key});

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            const TextFeildAddImageWidget(
              labelText: "Title",
              maxLines: 1,
            ),
            const SizedBox(height: 15),
            const DropDownTextFieldWidget(
              labelText: "Medium",
              hintText: "Select Medium",
              dropDownList: [
                DropDownValueModel(name: "Medium1", value: "Medium1"),
                DropDownValueModel(name: "Medium2", value: "Medium2"),
                DropDownValueModel(name: "Medium3", value: "Medium3"),
                DropDownValueModel(name: "Medium4", value: "Medium4"),
              ],
            ),
            const SizedBox(height: 15),
            const DropDownTextFieldWidget(
              labelText: "Tags",
              hintText: "Select tags",
              dropDownList: [
                DropDownValueModel(name: "Tag1", value: "Tag1"),
                DropDownValueModel(name: "Tag2", value: "Tag2"),
                DropDownValueModel(name: "Tag3", value: "Tag3"),
                DropDownValueModel(name: "Tag4", value: "Tag4"),
              ],
            ),
            const SizedBox(height: 15),
            const TextFeildAddImageWidget(
              labelText: "Description",
              maxLines: 6,
            ),
            const SizedBox(height: 30),
            KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
              if (isKeyboardVisible == true) {
                return ButtonWidget(
                  label: "Upload",
                  onPressed: () {},
                );
              } else {
                return const Text("");
              }
            }),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
