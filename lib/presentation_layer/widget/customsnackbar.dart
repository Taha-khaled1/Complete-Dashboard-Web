import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController snackbarcustom(
  IconData icon,
  String body,
  Color color,
  Color backgcolor,
) {
  return Get.snackbar(
    "",
    "",
    titleText: const Padding(
      padding: EdgeInsets.only(left: 25, right: 50),
      child: Text(
        'Statues',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    icon: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Icon(icon, size: 50, color: color),
    ),
    duration: const Duration(milliseconds: 1400),
    snackPosition: SnackPosition.BOTTOM,
    messageText: Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Text(
        body,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
      ),
    ),
    backgroundColor: backgcolor,
  );
}
