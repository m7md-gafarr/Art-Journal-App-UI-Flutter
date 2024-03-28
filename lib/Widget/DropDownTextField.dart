import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class DropDownTextFieldWidget extends StatelessWidget {
  DropDownTextFieldWidget(
      {super.key,
      required this.dropDownList,
      required this.hintText,
      required this.labelText});
  final String labelText, hintText;

  final List<DropDownValueModel> dropDownList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: DropDownTextField(
        textFieldDecoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          labelStyle: TextStyle(
            color: Dark,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: "font",
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Dark,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Dark,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        dropDownList: [
          for (var i = 0; i < dropDownList.length; i++) ...[
            dropDownList[i],
          ],
        ],
      ),
    );
  }
}
