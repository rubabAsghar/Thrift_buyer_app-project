import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../const/buyer_const/colors.dart';
import '../../const/buyer_const/styles.dart';

Widget HomeButton({ width,height,String? title,icon,onpress}){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon,width: 26),
        10.heightBox,
        title!.text.fontFamily(semibold).color(darkFontGrey).make(),
        ],
  ).box.rounded.white.size(width, height).shadowSm.make();
}