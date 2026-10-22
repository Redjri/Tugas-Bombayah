import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class tokoController extends GetxController {

  void GoLogin() {
    Future.delayed(
        Duration(seconds: 2), () {
          Get.offNamed('/login');
    });
  }


  var username = ''.obs;
  var password = ''.obs;

  void login() {
    if (username.value == 'admin' && password.value == '1234') {
      Get.offNamed('/beranda');
    } else {
      Get.snackbar(
        'Gagal Login',
        'Username atau Password salah!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  var vnama = ''.obs;
  var vumur = ''.obs;
  var valamat = ''.obs;

  void lihatBiodata() {
    String nama = vnama.value;
    String umur = vumur.value;
    String alamat = valamat.value;

    Get.toNamed('/biodata/$nama?umur=$umur&alamat=$alamat');
  }
}