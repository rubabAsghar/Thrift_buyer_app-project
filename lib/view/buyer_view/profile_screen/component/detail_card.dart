import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../../const/buyer_const/colors.dart';
import '../../../../const/buyer_const/styles.dart';


Widget Detailscard({width,String? count,String? title}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).make(),
    ],
  ).box.rounded.width(width).height(80).padding(EdgeInsets.all(4)).make();
}