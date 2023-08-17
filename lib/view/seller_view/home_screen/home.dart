
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled2/const/seller%20const/images.dart';
import 'package:untitled2/view/seller_view/Product_Screen/Product_screen.dart';
import 'package:untitled2/view/seller_view/home_screen/home_screen.dart';
import 'package:untitled2/view/seller_view/order_screen/order_screen.dart';
import 'package:untitled2/view/seller_view/profile_screen/Profile_Screen.dart';

import '../../../const/seller const/const.dart';
import '../../../controller/seller controller/home_controller.dart';
import '../../../widget/seller_widget/normal_text.dart';

class SellerHome extends StatelessWidget {
  const SellerHome({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(sellerhomecontroller());

    var newscreen = [
      SellerHomeScreen(),
      SellerProductScreen(),
      SellerOrderScreen(),
      SellerProfileScreen(),
    ];

    var bottomNavbar = [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: dashboard),
      BottomNavigationBarItem(icon: Image.asset(icProducts,width: 14,color: darkGrey,),label: products),
      BottomNavigationBarItem(icon: Image.asset(icOrder,width: 14,color: darkGrey),label: orders),
      BottomNavigationBarItem(icon: Image.asset(icGeneralSetting,width: 14,color: darkGrey),label: settings),

    ];

   return Scaffold(
     bottomNavigationBar: Obx(
         () => BottomNavigationBar(
         onTap: (index){
           controller.navIndex.value= index;
         },
           currentIndex: controller.navIndex.value,
         type: BottomNavigationBarType.fixed,
        selectedItemColor: purpleColor,
         unselectedItemColor: darkGrey,
         items: bottomNavbar,
       ),
     ),
     body: Obx(
         () => Column(
         children:
         [
           Expanded(child:
           newscreen.elementAt(controller.navIndex.value),
           ),
         ],
       ),
     ),
   );
  }
}
