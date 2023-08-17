import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/images.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../controller/buyer controller/profile_controller.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import '../../../widget/buyer_widget/button.dart';
import '../../../widget/buyer_widget/custom.textfeild.dart';



class EditprofileScreen extends StatelessWidget {
  const EditprofileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     var controller =Get.find<ProfileController>();
   return bgWidget(
     child: Scaffold(
       appBar: AppBar(),
       body: Obx(
           () => Center(
           child: Column(
             children: [
               controller.profileimagepath.isEmpty? Image.asset(imgProfile2,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make() : Image.file(File(controller.profileimagepath.value),
               width: 100,
                 fit: BoxFit.cover,
               ).box.roundedFull.clip(Clip.antiAlias).make(),
               10.heightBox,
              button(color:Colors.blue,onPressed: (){
                controller.ChangeImage(context);
              }, textColor: whiteColor, title: "Change"),
               Divider(),
               20.heightBox,
               CustomTextFeild(hint: namehint,title: name,isPass: false),
               CustomTextFeild(hint: passwordhint,title: password,isPass: true),

               20.heightBox,
               SizedBox(
                 width: context.screenWidth-40,
                   child: button(color:Colors.blue,onPressed: (){}, textColor: whiteColor, title: "save")),
             ],
           ).box.white.margin(EdgeInsets.only(top: 50,left: 12,right: 12)).shadowSm.padding(EdgeInsets.all(16)).rounded.make(),
         ),
       ),
     )
   );

  }
}
