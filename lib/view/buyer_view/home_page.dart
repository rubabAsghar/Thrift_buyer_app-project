import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/view/buyer_view/profile_screen/profile_screen.dart';
import '../../const/buyer_const/colors.dart';
import '../../const/buyer_const/images.dart';
import '../../const/buyer_const/strings.dart';
import '../../const/buyer_const/styles.dart';
import '../../controller/buyer controller/home_controller.dart';
import 'cart_screen/cart_screen.dart';
import 'catagory_screen/Catagory_screen.dart';
import 'home_screen/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homecontroller());

    var navbarItems = [
      BottomNavigationBarItem(icon: Image.asset(icHome , width: 25),label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories , width: 25),label: catagories),
      BottomNavigationBarItem(icon: Image.asset(icCart , width: 25),label: cart),
      BottomNavigationBarItem(icon: Image.asset(icProfile , width: 25),label: account),
    ];

    var navBody = [
         HomeScreen(),
         CatagoryScreen(),
          CartScreen(),
         ProfileScreen(),
    ];
    return Scaffold(

      body: Column(
        children: [
          Obx(()=> Expanded(
            child: navBody.elementAt(controller.currectNevIndex.value),
          )),
        ],
      ),
      bottomNavigationBar: Obx(()=>
       BottomNavigationBar(
         currentIndex: controller.currectNevIndex.value,
        selectedItemColor: blue,
          selectedLabelStyle: TextStyle(fontFamily: semibold),
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: navbarItems,
       onTap: (value){
         currentIndex: controller.currectNevIndex.value=value;
      },
       ),
    ));
  }
}
