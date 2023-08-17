import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/const/buyer_const/images.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/social_Icon.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../controller/buyer controller/auth_controller.dart';
import '../../../controller/buyer controller/profile_controller.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import '../auth/login.dart';
import 'component/detail_card.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ProfileController());

    return bgWidget(
      child:Scaffold(
        body: SafeArea(
     child:
        Column(
          mainAxisSize: MainAxisSize.min,
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Align(
               alignment: Alignment.topRight,
               child: Icon(Icons.edit,color:Colors.white)).onTap(() {
                 Get.to(()=> EditprofileScreen());
           }),
         ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
           children: [
             Image.asset(imgProfile2,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
             10.widthBox,
             Expanded(child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 "Dummy User".text.fontFamily(semibold).white.make(),
                 5.heightBox,
                 "Customer@gmail.com".text.white.make(),
               ],
             ) ),
             OutlinedButton(
               style: OutlinedButton.styleFrom(
                 side: const BorderSide(
                   color: Colors.white,
                 )
               ),
               onPressed: () async{
                 await Get.put(AuthController()). signoutMethod(context);
                     Get.offAll(()=> Login());
                     },
                 child: "Logout".text.fontFamily(semibold).white.make(),
             ),
      ],

     ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Detailscard(count: "00",title: "in your cart", width: context.screenWidth/3.4),
            Detailscard(count: "32",title: "in your wishlist", width: context.screenWidth/3.4),
            Detailscard(count: "675",title: "Your Orders", width: context.screenWidth/3.4),
          ],
        ),


         
         ListView.separated(
           shrinkWrap: true,
             separatorBuilder: (context , index){
               return  const Divider(color:lightGrey);
             },
             itemCount: profileButtonList.length,
             itemBuilder: (BuildContext context , int index){
               return ListTile(
                 leading: Image.asset(profileButtonIcon[index],width: 22),
                 title: profileButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
               );
             }).box.white.rounded.margin(EdgeInsets.all(12))
             .padding(EdgeInsets.symmetric(horizontal: 16))
             .shadowSm.make().box.color(Colors.blue).make(),
    ],
    )


    ))
    );
  }
}