import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget bgWidget({Widget? child}) {
  return Container(
   decoration: BoxDecoration(
  image: DecorationImage(
        image: AssetImage('assets/buyer_assets/icons/bg.png'),
        fit: BoxFit.fill,
    )
  ),
      child:child,
  );

}