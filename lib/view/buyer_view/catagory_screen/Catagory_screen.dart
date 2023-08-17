import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/social_Icon.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import 'Catagory_detail.dart';


class CatagoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child:Scaffold(
          appBar: AppBar(
            title: catagories.text.fontFamily(bold).white.make(),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
              child:GridView.builder(
                 // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8 ,crossAxisSpacing: 8,mainAxisExtent: 300 ),
                  itemBuilder: (context,index) {
                    return  Column(
                      children: [
                        Image.asset(catagoriesImages[index],
                        height: 130,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        10.heightBox,
                        Catagorieslist[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                      ],
                    ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make().onTap(() {
                      Get.to(()=>catagoriesDetail(title: Catagorieslist[index]) );
                    });

                  }
              )
          ),

        ));
  }
}