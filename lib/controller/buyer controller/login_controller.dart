import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void loginaip() async {
    try {
      final response = await http.post(
        Uri.parse('https://reqres.in/api/login'),
        body: {
          'email': emailController.value.text,
          'password': passwordController.value.text,
        },
      );

      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar('Login successful', data['error']);
      } else {
        Get.snackbar('Login failed', data['error']);
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
    }
  }
}