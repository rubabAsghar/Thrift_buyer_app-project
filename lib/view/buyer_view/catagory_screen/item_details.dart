import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/images.dart';
import '../../../const/buyer_const/social_Icon.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../widget/buyer_widget/button.dart';



class ItemDetails extends StatelessWidget {
   String? title;
   ItemDetails({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title?.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share, color: darkFontGrey)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline, color: darkFontGrey)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      aspectRatio: 16 / 9,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgFc5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    10.heightBox,
                    title!.text.size(16).fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      count: 5,
                      size: 25,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30,000".text.color(blue).fontFamily(bold).size(18).make(),
                    10.heightBox,
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller".text.white.fontFamily(semibold).make(),
                              5.heightBox,
                              "In House Brand".text.color(darkFontGrey).fontFamily(semibold).make(),
                            ],
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(Icons.message_rounded, color: darkFontGrey),
                        ),
                      ],
                    ).box.height(70).padding(const EdgeInsets.symmetric(horizontal: 16)).color(textfieldGrey).make(),

                    // Color section
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(3, (index) => VxBox().size(40, 40).roundedFull.color(Vx.randomPrimaryColor).margin(EdgeInsets.symmetric(horizontal: 6)).make()).toList(),
                            ),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),

                        // Quantity Row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity: ".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                                "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                                10.widthBox,
                                "(0 available)".text.color(textfieldGrey).make(),
                              ],
                            ),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),

                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Price: ".text.color(textfieldGrey).make(),
                            ),
                            "\$0.00".text.color(blue).size(16).fontFamily(bold).make(),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                      ],
                    ).box.white.shadowSm.make(),

                    // Description section
                    10.heightBox,
                    "Description".text.fontFamily(semibold).color(darkFontGrey).make(),
                    10.heightBox,
                    "This is dummy Item and dummy description here".text.color(darkFontGrey).make(),

                    // Button section
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                      itemDetailButtonList.length,
                           (index) => ListTile(
                        title: itemDetailButtonList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                        trailing: const Icon(Icons.arrow_forward),
                      )),
                    ),
                    20.heightBox,
                    //product you may also like:
                     productyoumayalsolike.text.color(darkFontGrey).size(16).fontFamily(bold).make(),
                     10.heightBox,

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: List.generate(6, (Index) =>
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(imgP1,width: 150, fit: BoxFit.fill),
                                  10.heightBox,
                                  "Laptop".text.
                                  fontFamily(semibold).
                                  color(darkFontGrey)
                                      .make(),
                                  10.heightBox,
                                  "\$600".text.fontFamily(bold)
                                      .color(blue)
                                      .size(16).make(),
                                ],
                              ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)
                              ).roundedSM.padding(EdgeInsets.all(12)).make(),
                          )

                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: button(
              color: blue,
              onPressed: () {},
              textColor: whiteColor,
              title: "Add to cart",
            ),
          ),
        ],
      ),
    );
  }
}