import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controllerlogin extends GetxController {
  var usn = ''.obs;
  var pw = ''.obs;

  void login() {
    if (usn.value == "admin" && pw.value == "123"){
      Get.bottomSheet(
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(16)
            )
          ),
          child: Wrap(
            children: [
              ListTile(
                title: Text('Tranfer'),
                onTap: () => bayar('Tranfer'),
              ),
              ListTile(
                title: Text('E-Wallet'),
                onTap: () => bayar('E-Wallet'),
              ),
              ListTile(
                title: Text('COD'),
                onTap: () => bayar('COD'),
              ),
            ],
          )
        )
      );
    } else {
      Get.snackbar(
        'Gagal!',
        'Username atau Password salah!',
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        icon: Icon(Icons.error, color: Colors.white),
        duration: Duration(seconds: 3)
      );
    }
  }

  void bayar(String metode) {
    Get.back();
    Get.offNamed('/bayar?user=$usn&metode=$metode');
  }

  void logout() {
    Get.defaultDialog(
      title: 'Apakah anda ingin log out?',
      textConfirm: "Ya",
      textCancel: "Batal",
      confirmTextColor: Colors.white,
      onConfirm: (){
        Get.offNamed('/login');
      }
    );
  }
}