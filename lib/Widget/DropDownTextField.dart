import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class DropDownTextFieldWidget extends StatelessWidget {
  const DropDownTextFieldWidget({
    super.key,
    required this.dropDownList,
    required this.hintText,
  });
  final String hintText;

  final List<DropDownValueModel> dropDownList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: DropDownTextField(
        textFieldDecoration: InputDecoration(
          filled: true,
          fillColor: Dark_50.withOpacity(.3),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Dark,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            fontFamily: "font",
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
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
