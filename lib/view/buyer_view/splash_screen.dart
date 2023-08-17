import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import '../../const/buyer_const/images.dart';
import '../../const/buyer_const/strings.dart';
import '../../const/buyer_const/styles.dart';
import '../../widget/buyer_widget/App_logowidget.dart';
import 'home_page.dart';
import 'onboarding_screen/onboarding_Screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void changeScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingScreen());


    });
  }
  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
         children: [
           Align(
             alignment:Alignment.topLeft,
               child:Image.asset(icSplashBg,width: 200)
        ),
           20.heightBox,
         appLogoWidget(),
           10.heightBox,
           appname.text.fontFamily(bold).size(22).white.make(),
           5.heightBox,
           appversion.text.white.make(),
           Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

         ],
        ),
      ),
    );
  }
}
