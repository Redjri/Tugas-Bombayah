import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dialog extends GetxController {
  void alog() {
    Get.defaultDialog(
      title: 'Konfirmasi Hapus',
      middleText: 'Data ini akan dihapus permanen.',
      textConfirm: 'Hapus',
      textCancel: 'Batal',
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
        },
    );
  }
}