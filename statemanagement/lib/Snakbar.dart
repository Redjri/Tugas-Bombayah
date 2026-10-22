import 'package:flutter/material.dart';
import 'package:get/get.dart';

class snakbarctrl extends GetxController {
  void bar() {
    Get.snackbar(
      'Berhasil',
      'Data berhasil tersimpan.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      icon: Icon( Icons.check_circle, color: Colors.white),
      duration: Duration(seconds: 3)
    );
  }
}