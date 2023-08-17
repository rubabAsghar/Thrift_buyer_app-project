import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/styles.dart';



class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child: "cart is empty!".text.color(darkFontGrey).fontFamily(semibold).makeCentered(),
    );

  }
}