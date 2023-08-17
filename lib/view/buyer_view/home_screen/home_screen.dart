
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../const/buyer_const/colors.dart';
import '../../../const/buyer_const/images.dart';
import '../../../const/buyer_const/social_Icon.dart';
import '../../../const/buyer_const/strings.dart';
import '../../../const/buyer_const/styles.dart';
import '../../../widget/buyer_widget/homebutton.dart';
import 'components/feature_Button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.all(12),
      color:CupertinoColors.lightBackgroundGray,
      width: context.screenWidth ,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children:[
            Container(
              alignment: Alignment.center,
              height: 60,
              color: Colors.grey,
              child: (
              TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled:true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                ),
              )
              ),
            ),
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(

                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 130,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length, itemBuilder: (context,index){
                      return Container(
                        child: Image.asset(sliderList[index],
                          fit: BoxFit.fitWidth,
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                      );
                    }),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) =>
                          HomeButton(
                            height : context.screenHeight * 0.15,
                            width: context.screenWidth / 2.5,
                            title: index == 0? todaysdeal : flashsale,
                            icon: index == 0? icTodaysDeal : icFlashDeal,
                          )),
                    ),
                    5.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 130,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length, itemBuilder: (context,index){
                      return Container(
                        child: Image.asset(secondSliderList[index],
                          fit: BoxFit.fitWidth,
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                      );
                    }),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) =>
                          HomeButton(
                            height : context.screenHeight * 0.15,
                            width: context.screenWidth / 4,
                            icon: index == 0? icTopCategories :index == 0? icBrands: icTopSeller,
                            title: index == 0? topcatagory :index == 1? brand: topseller,
                          )
                      ),
                    ),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featurecatagories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featureButton(icon: featureImage1[index],title: featuretitle1[index]),
                            10.heightBox,
                            featureButton(icon: featureImage2[index],title: featuretitle2[index]),
                          ],
                        ),
                      )

                ),
                    ),
                    20.heightBox,
                    Container(
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(color: blue),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [featureProducts.text.white.fontFamily(bold).size(18).make(),
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
                                          "Laptop".text.fontFamily(semibold).color(darkFontGrey).make(),
                                         10.heightBox,
                                          "\$600".text.fontFamily(bold).color(blue).size(16).make(),
                                        ],
                                      ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make(),
                        )

                                ),
                              ),

                        ]
                    ),
                    ),


                    20.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        autoPlay: true,
                        height: 130,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length, itemBuilder: (context,index){
                      return Container(
                        child: Image.asset(secondSliderList[index],
                          fit: BoxFit.fitWidth,
                        ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make(),
                      );
                    }),

                    20.heightBox,
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 8 ,crossAxisSpacing: 8,mainAxisExtent: 300 ),
                        itemBuilder: (context,index) {
                        return  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP5,
                                height: 200,
                                width: 200,
                                fit: BoxFit.fill),
                           const Spacer(),
                            "Laptop".text.fontFamily(semibold).color(darkFontGrey).make(),
                            10.heightBox,
                            "\$600".text.fontFamily(bold).color(blue).size(16).make(),
                          ],
                        ).box.white.margin(EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(EdgeInsets.all(12)).make();

                        }
                    )
                ]
              ),
            )
            )
  ]
      ),
      ) );

  }
}
