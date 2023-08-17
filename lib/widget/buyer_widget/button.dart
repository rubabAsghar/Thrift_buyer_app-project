import 'package:flutter/material.dart';

import '../../const/buyer_const/styles.dart';


Widget button({onPressed, required Color color, required Color textColor, required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPressed,
    child: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontFamily: bold,
      ),
    ),
  );
}