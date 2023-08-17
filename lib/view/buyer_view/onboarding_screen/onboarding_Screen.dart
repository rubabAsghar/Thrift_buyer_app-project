import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/view/seller_view/auth/log%20in%20screen.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/firebase_const.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../widget/buyer_widget/App_logowidget.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import '../../../widget/buyer_widget/button.dart';
import '../auth/login.dart';
import '../home_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(title: "Choose Role".text.make()),
        body:
         Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
               "Are you a buyer or seller?".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,

              Row(
                children: [

                  SizedBox(
                     height: 50,
                      width: 150,
                      child: button(color:Colors.blue,onPressed: (){
                        auth.authStateChanges().listen((User? users) {
                          if(users == null ) {
                            Get.to(()=> Login());
                          }else{
                            Get.to(()=> Home());
                          }
                        });
                      }, textColor: whiteColor, title: "Buyer")),
                     110.widthBox,
                  SizedBox(
                    height: 50,
                      width: 150,
                      child: button(color:Colors.blue,onPressed: (){
                        Get.to(() => SellerLogIn());
                      }, textColor: whiteColor, title: "Seller")),
                ],
              ).box.white.padding(EdgeInsets.all(40)).makeCentered(),
            ],
          ),
      )
    );
  }
}
