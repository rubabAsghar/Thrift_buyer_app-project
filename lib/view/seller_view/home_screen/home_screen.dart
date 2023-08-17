import 'package:firebase/firebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled2/const/seller%20const/images.dart';
import 'package:untitled2/widget/seller_widget/dashboard_button.dart';
import 'package:untitled2/widget/seller_widget/normal_text.dart';
import 'package:intl/intl.dart' as intl;
import '../../../const/seller const/const.dart';
import '../../../widget/seller_widget/appbar_widget.dart';

class SellerHomeScreen extends StatelessWidget {
  const SellerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context , title: products , count: "75",icon: icProducts),
                dashboardButton(context , title: orders , count: "20" , icon: icOrder),
              ],
            ),
            SizedBox(height: 10), // Use SizedBox to add spacing
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context , title: rating, count: "10", icon: icStar),
                dashboardButton(context , title: totalsale , count: "25" , icon: icOrder),
              ],
            ),
            30.heightBox,
            Divider(),
            10.heightBox,
            Boldtext(text: popularproducts , color: fontGrey , size: 16.0),
            20.heightBox,
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 9,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {},
                          leading: Image.asset(
                            imgProduct,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          title: Boldtext(text: "Product Tile", color: fontGrey),
                          subtitle: Normaltext(text: "\$40", color: darkGrey),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    );


  }
}
