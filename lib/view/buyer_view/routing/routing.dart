import 'package:get/get.dart';

import '../../../const/buyer_const/route_const.dart';
import '../auth/SignUp.dart';
import '../auth/login.dart';
import '../cart_screen/cart_screen.dart';
import '../catagory_screen/Catagory_detail.dart';
import '../catagory_screen/Catagory_screen.dart';
import '../catagory_screen/item_details.dart';
import '../home_page.dart';
import '../home_screen/home_screen.dart';
import '../profile_screen/edit_profile.dart';
import '../profile_screen/profile_screen.dart';
import '../splash_screen.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: RouteString.splash,
      page: () => SplashScreen(),

    ),

    GetPage(
      name: RouteString.signUp,
      page: () => SignUp(),

    ),

    GetPage(
      name: RouteString.login,
      page: () => Login(),
    ),

    GetPage(
      name: RouteString.home,
      page: () => Home(),

    ),

    GetPage(
      name: RouteString.homeScreen,
      page: () => HomeScreen(),

    ),
    GetPage(
      name: RouteString.catagories,
      page: () =>CatagoryScreen(),

    ),
    GetPage(
      name: RouteString.catagoryDetail,
      page: () => catagoriesDetail(),

    ),
    GetPage(
      name: RouteString.itemDetails,
      page: () => ItemDetails(),

    ),
    GetPage(
      name: RouteString.cart,
      page: () => CartScreen(),

    ),
    GetPage(
      name: RouteString.account,
      page: () => ProfileScreen(),

    ),

    GetPage(
      name: RouteString.editprofile,
      page: () => EditprofileScreen(),

    ),

    

  ];
}
