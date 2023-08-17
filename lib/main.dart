import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled2/view/buyer_view/splash_screen.dart';

import 'const/buyer_const/colors.dart';
import 'const/buyer_const/styles.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAsZKN91_X_GsX_yyYmfFtOwaDEul3VkFA",
      appId: "1:550802943976:android:5181266b624dc334affe5d",
      messagingSenderId: "",
      projectId: "",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            iconTheme:IconThemeData(
            color: darkFontGrey ,
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent) ,
        fontFamily: regular,
      ),
      home: SplashScreen(),
      //initialRoute: "/",
    );
  }
}