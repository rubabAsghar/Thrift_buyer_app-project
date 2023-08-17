import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/images.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../widget/buyer_widget/bg_widget.dart';
import 'item_details.dart';


class catagoriesDetail extends StatelessWidget {
  final String? title;
  const catagoriesDetail({Key ? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
      body:Container(
        padding:EdgeInsets.all(12),
        child:Column(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(6, (index) => "Baby clothing".text.
                    fontFamily(bold).size(12).color(darkFontGrey).
                    makeCentered() .box.white.
                    rounded.
                    size(120,60).
                    margin(EdgeInsets.symmetric(horizontal: 4)).
                    white.
                    make()),
                  ),
                ),

                20.heightBox,
                Expanded(
                    child:GridView.builder(
                      physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8 ,crossAxisSpacing: 8,mainAxisExtent: 250 ),
                        itemBuilder: (context,index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(imgP5,
                                  height: 150,
                                  width: 200,
                                  fit: BoxFit.fill),
                              "Laptop".text.fontFamily(semibold).color(
                                  darkFontGrey).make(),
                              10.heightBox,
                              "\$600".text.fontFamily(bold)
                                  .color(blue)
                                  .size(16)
                                  .make(),
                            ],
                          ).box.white
                              .margin(EdgeInsets.symmetric(horizontal: 4))
                              .roundedSM.
                              outerShadowSm
                              .padding(EdgeInsets.all(12))
                              .make().onTap(() {
                                Get.to(() => ItemDetails(title:"dummy item"));
                          });
                        } ),
                ) ]
           ),
      ) ));



  }
}
