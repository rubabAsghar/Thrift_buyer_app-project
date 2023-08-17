import 'package:flutter/cupertino.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../../../const/buyer_const/colors.dart';
import '../../../../const/buyer_const/styles.dart';

Widget featureButton({String? title,icon}) {
  return Row(
  children: [ 
    Image.asset(icon,width: 60, fit: BoxFit.fill),
    10.widthBox,
    title!.text.fontFamily(semibold).color(darkFontGrey).make(),
  ],
  ).box.white.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).padding(EdgeInsets.all(8)).roundedSM.outerShadowSm .make();
}