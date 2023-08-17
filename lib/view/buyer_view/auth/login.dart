import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/social_Icon.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../controller/buyer controller/auth_controller.dart';
import '../../../widget/buyer_widget/App_logowidget.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import '../../../widget/buyer_widget/button.dart';
import '../../../widget/buyer_widget/custom.textfeild.dart';
import '../home_page.dart';
import 'SignUp.dart';



class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AuthController());
    return bgWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            "Log In to $appname".text.fontFamily(bold).white.size(18).make(),
            10.heightBox,
            Obx(()=>Column(
                   children: [
                     CustomTextFeild(hint: emailhint,title: email,isPass: false, controller: controller.emailController),
                     CustomTextFeild(hint: passwordhint,title: password , isPass: true, controller: controller.passwordController),
                     Align(
                       alignment: Alignment.centerRight,
                         child: TextButton(onPressed: (){}, child: forgotpass.text.make())),
                     5.heightBox,
                    //button()
                    controller.isloading.value? CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.blue),
                    ):button(color: blue,title: login ,textColor: whiteColor,onPressed: ()
                    async{
                      controller.isloading(true);
                      await controller.loginmethod(context).then((value) => {
                        if(value!=null){
                            VxToast.show(context, msg: loggedin),
                            Get.offAll(() => const Home()),
                        }else{
                          controller.isloading(false),
                        }

                      });
                    }).
                       box.
                         width(context.screenWidth -50).make(),
                     5.heightBox,
                     createnewaccout.text.color(fontGrey).make(),
                     5.heightBox,
                     button(color: CupertinoColors.lightBackgroundGray,title: signup ,textColor: blue,onPressed: (){
                       Get.to(()=> SignUp());
                     }).
                     box.
                     width(context.screenWidth -50).make(),
                     10.heightBox,
                     loginwith.text.color(fontGrey).make(),
                     5.heightBox,
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: List.generate(3, (index) => Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: CircleAvatar(
                           radius: 25,
                           child: Image.asset(socialIconList[index],
                           width: 30),
                         ),
                       )),
                     )
                   ],
              ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth -70).shadowSm.make(),
            ),
          ],
        ),
      ),
    ));
  }
}
