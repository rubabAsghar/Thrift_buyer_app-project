import 'package:firebase/firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/const/seller%20const/images.dart';
import 'package:untitled2/widget/seller_widget/dashboard_button.dart';
import 'package:untitled2/widget/seller_widget/normal_text.dart';
import 'package:intl/intl.dart' as intl;
import '../../../const/seller const/const.dart';

AppBar AppBarWidget(title){
  return  AppBar(
    backgroundColor: Colors.white,
  automaticallyImplyLeading: false,
  title: Boldtext(text:title,color: fontGrey , size: 18.0),
  actions: [

  Center(child: Boldtext(text:intl.DateFormat('EEE, MMM d, ' 'yy').format(DateTime.now()),color:purpleColor)),
  10.widthBox,
  ],
  );
}