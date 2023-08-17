import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'package:untitled2/const/seller%20const/images.dart';
import 'package:untitled2/widget/seller_widget/normal_text.dart';
import 'package:flutter/material.dart';
import '../../../const/seller const/const.dart';

class SellerProfileScreen extends StatelessWidget {
  const SellerProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        title: Boldtext(text: settings, size: 18.0),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          TextButton(onPressed: () {}, child: Normaltext(text: logout ,)),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(imgProduct).box.roundedFull.clip(Clip.antiAlias).make(),
              title: Boldtext(text: "Vander Name") ,
              subtitle: Normaltext(text: "Vender@mart.com") ,
            ),
            Divider(),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children:
                     List.generate(ProfileButtonIcon.length,
                             (index) => ListTile(
                       leading: Icon(ProfileButtonIcon[index]),
                         title: Normaltext(text: ProfileButtonTitle[index]),
                     )),

              ),
            )


          ],
        ),
      )
    );



  }
}
