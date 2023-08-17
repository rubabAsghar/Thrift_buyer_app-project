import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/const/seller%20const/const.dart';
import '../../../const/seller const/color.dart';
import '../../../const/seller const/images.dart';
import '../../../widget/seller_widget/button.dart';
import '../../../widget/seller_widget/normal_text.dart';
import '../home_screen/home.dart';

class SellerLogIn extends StatelessWidget {
  const SellerLogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    backgroundColor: purpleColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.heightBox,
            Normaltext(text :welcome,size: 18.0),
            20.heightBox,
            Row(
              children: [
                Image.asset(icLogo,
                  width: 70,
                  height: 70,
                ).box.border(
                  color: Colors.white
                ).rounded.padding(EdgeInsets.all(8)).make(),
                10.widthBox,
                Boldtext( text: appname,size: 20.0
                ),
              ],
            ),
                40.heightBox,
            Normaltext(text:loginto , size: 18.0,color: lightGrey),
            10.heightBox,
            Column(
              children: [
             TextFormField(
               decoration: InputDecoration(
                 filled: true,
                 fillColor: textfieldGrey,
                 prefixIcon: Icon(Icons.email ,color: purpleColor),
                 border: InputBorder.none,
                 hintText: emailHint,
               ),
             ),
                 10.heightBox,
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: textfieldGrey,
                    prefixIcon: Icon(Icons.lock ,color: purpleColor),
                    border: InputBorder.none,
                    hintText: passwordHint,
                  ),
                ),
                10.heightBox,
                   Align(
                     alignment: Alignment.centerRight,
                     child: TextButton(
                       onPressed: (){}, child: Normaltext(text: forgotPassword , color: purpleColor)
                     ),
                   ),
                30.heightBox,
                SizedBox(
                  width: context.screenWidth-100,
                  child: OurButton(
                    title: login,
                    onPress: () {
                      Get.to(()=> SellerHome());
                    },
                  ),
                ),
              ],
            ).box.white.rounded.outerShadowMd.padding(EdgeInsets.all(8)).make(),

            10.heightBox,
            Center(
              child: Normaltext(
                text: anyProblem ,
                color: lightGrey,
              ),
            ),
            const Spacer(),
            Center(child: Boldtext(text: credit)),
            20.heightBox,
          ],
        ),
      )
    );

  }

}