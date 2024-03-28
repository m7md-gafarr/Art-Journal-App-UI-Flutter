import 'package:art_journal/const.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'ButtonWidget.dart';
import 'DropDownTextField.dart';
import 'TextFeildAddImageWidget.dart';

class AddImage extends StatelessWidget {
  const AddImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Bright,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Icon(
                        Iconsax.image4,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
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
            TextFeildAddImageWidget(
              labelText: "Title",
              maxLines: 1,
            ),
            SizedBox(height: 30),
            DropDownTextFieldWidget(
              labelText: "Medium",
              hintText: "Select Medium",
              dropDownList: [
                DropDownValueModel(name: "Medium1", value: "Medium1"),
                DropDownValueModel(name: "Medium2", value: "Medium2"),
                DropDownValueModel(name: "Medium3", value: "Medium3"),
                DropDownValueModel(name: "Medium4", value: "Medium4"),
              ],
            ),
            SizedBox(height: 30),
            DropDownTextFieldWidget(
              labelText: "Tags",
              hintText: "Select tags",
              dropDownList: [
                DropDownValueModel(name: "Tag1", value: "Tag1"),
                DropDownValueModel(name: "Tag2", value: "Tag2"),
                DropDownValueModel(name: "Tag3", value: "Tag3"),
                DropDownValueModel(name: "Tag4", value: "Tag4"),
              ],
            ),
            SizedBox(height: 30),
            TextFeildAddImageWidget(
              labelText: "Description",
              maxLines: 6,
            ),
            SizedBox(height: 30),
            if (MediaQuery.of(Scaffold.of(context).context).viewInsets.bottom !=
                0)
              ButtonWidget(
                label: "Upload",
                onPressed: () {},
              ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
