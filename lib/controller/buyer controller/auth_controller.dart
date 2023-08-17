import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../const/buyer_const/firebase_const.dart';


class AuthController extends GetxController {
  var isloading = false.obs;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();

  Future<UserCredential?> loginmethod(context) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      rethrow;
    }
  }

  Future<UserCredential?> signupmethod({email, password, context}) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.toString());
      rethrow;
    }
  }

 storeUserData({name, password, email}) async {

      final store =  await firestore.collection(userCollection).doc(currentUser!.uid);
     store.set({'name': name, 'password': password, 'email': email, 'imageUrl': ''});
    }


 signoutMethod(context) async {
    try {
      await auth.signOut();
    } catch (e) {
      VxToast.show(context, msg: e.toString());
    }
  }
}
