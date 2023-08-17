import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:untitled2/const/seller%20const/const.dart';

import '../../const/seller const/color.dart';
import '../../const/seller const/images.dart';
import 'normal_text.dart';

Widget dashboardButton(context , {title , count , icon}){
 var size = MediaQuery.of(context).size;
 return  Row(
   children: [
     Expanded(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         crossAxisAlignment: CrossAxisAlignment.start,

         children: [

           Boldtext(text: title , size: 16.0),
           Boldtext(text: count , size: 20.0),
         ],

       ),
     ),
     Image.asset(icon,width: 40,color: white),
   ],
 ).box.
 color(purpleColor)
     .size(size.width * 0.2 , 80).
 rounded.
 padding(EdgeInsets.all(8)).make();
}