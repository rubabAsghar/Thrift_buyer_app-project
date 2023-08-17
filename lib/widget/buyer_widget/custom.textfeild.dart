import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../const/buyer_const/colors.dart';
import '../../const/buyer_const/styles.dart';

Widget CustomTextFeild({String? title, String? hint, controller,isPass}) {

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    title!.text.color(blue).fontFamily(bold).size(18).make(),
    5.heightBox,
    TextFormField(
      obscureText: isPass,
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
        hintStyle: TextStyle(
          fontFamily: semibold,
          color: textfieldGrey,
        ),
        isDense: true,
        fillColor: lightGrey,
        filled: true,
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: blue))
      ),
    )
  ],
  );
}