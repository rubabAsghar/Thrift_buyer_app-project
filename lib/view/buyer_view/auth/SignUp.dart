import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/firebase_const.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../controller/buyer controller/auth_controller.dart';
import '../../../widget/buyer_widget/App_logowidget.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import '../../../widget/buyer_widget/button.dart';
import '../../../widget/buyer_widget/custom.textfeild.dart';
import '../home_page.dart';


class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? isCheck =  false;
  var controller = Get.put(AuthController());

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordRetypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgWidget(child: Scaffold(
        resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Column(

              children: [
                CustomTextFeild(hint: namehint,title: name,controller: nameController,isPass: false),
                CustomTextFeild(hint: emailhint,title: email, controller: emailController,isPass : false),
                CustomTextFeild(hint: passwordhint,title: password, controller: passwordController, isPass : true),
                CustomTextFeild(hint: passwordhint,title: retypepassword,controller: passwordRetypeController , isPass: true),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgotpass.text.make())),
                5.heightBox,
                //button()

              Row(
                children: [
                  Checkbox(checkColor: blue,
                      value: isCheck,
                      onChanged: (newValue)
                      {
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                  5.widthBox,
                  Expanded(
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text: "I agree to the",
                            style: TextStyle(
                          fontFamily: bold,
                          color: fontGrey,
                        ) ),
                        TextSpan(text: termsandconditions,
                            style: TextStyle(
                              fontFamily: bold,
                              color: blue,
                            ) ),
                        TextSpan(text: "and",
                            style: TextStyle(
                              fontFamily: bold,
                              color: fontGrey,
                            ) ),
                        TextSpan (text: privacypolicy,
                            style: TextStyle(
                              fontFamily: bold,
                              color: blue,
                            ) ),
                      ]
                    )),
                  )
                ],
              ),
                button(color: isCheck == true?
                blue : lightGrey,
                    title: signup ,
                    textColor: whiteColor,onPressed: ()
                    async{
                   if(isCheck!= false){
                     try{
                       await controller.signupmethod(
                         context:context, email : emailController.text, password:passwordController.text
                       ).then((value){
                         return controller.storeUserData(
                           email : emailController.text,
                           password : passwordController.text,
                           name : nameController.text
                         );
                       }).then((value) => {
                  VxToast.show(context, msg : loggedin),
                  Get.offAll(() =>const Home()),
                       });
                     }catch(e){
                          auth.signOut();
                          VxToast.show(context, msg: e.toString());
                     }
                   }
                    }
                    ).
                box.
                width(context.screenWidth -50).make(),
        10.heightBox,

        RichText(text: TextSpan(
          children: [
            TextSpan(text: alreadyhaveaccount,
                style: TextStyle(
                  fontFamily: bold,
                  color: fontGrey,
                ) ),

            TextSpan(text: login,
                style: TextStyle(
                  fontFamily: bold,
                  color: blue,
                )
            ),
            ],
        ),
        ).onTap((){
          Get.back();
        })
            ],

            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
          ],
        ),
     ),
    ));
  }
}
