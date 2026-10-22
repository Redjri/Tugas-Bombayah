import 'package:biodatanoai/FormPage.dart';
import 'package:biodatanoai/Menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class noaicontroller extends GetxController {
  final usn = TextEditingController();
  final pw = TextEditingController();
  final name = TextEditingController();
  var nama = ''.obs;
  var keg = ''.obs;


  void login(){
    if (usn.text.isEmpty && pw.text.isEmpty) {
      Get.snackbar(
          'Gagal!',
          'Username atau Password harus diisi',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 3)
      );
    }
    else {
      Get.snackbar(
          'Berhasil!',
          'Selamat datang Budi!',
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 3)
      );
    }
  }


  void Botshet() {
    Get.bottomSheet(
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(16)),
          ),
          child: GestureDetector(
            child: Wrap(
              children: [
                ListTile(
                  title: Text('Harga Termahal'),
                  onTap: () {
                    Get.back();
                    Get.snackbar('info', 'Diurutkan berdasarkan: Harga Termahal');
                  }
                ),
                ListTile(
                  title: Text('Harga Termahal'),
                    onTap: () {
                      Get.back();
                      Get.snackbar('info', 'Diurutkan berdasarkan: Harga Termahal');
                    }
                ),
                ListTile(
                  title: Text('Nama A–Z'),
                    onTap: () {
                      Get.back();
                      Get.snackbar('info', 'Diurutkan berdasarkan: Nama A-Z');
                    }
                ),
              ],
            ),
          ),
        )
    );
  }

  void dialog() {
    Get.defaultDialog(
      title: 'Hapus Catatan?',
      middleText: 'Catatan yang dihapus tidak dapat dikembalikan.',
      textConfirm: 'Ya, Hapus',
      textCancel: 'Batal',
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.offAll(HomePage());
        Get.snackbar('Berhasil', 'Catatan berhasil dihapus');
      }
    );
  }

  void formulir(String es) {
    if (name.text.isEmpty) {
      Get.snackbar('Peringatan', 'Form belum di isi');
    } else {
      Get.bottomSheet(
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16)),
            ), child: Wrap(
            children: [
              Column(
                children: [
                  Text('Nama: $nama'),
                  SizedBox(height: 15,),
                  Text('Kegiatan: $es')
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Yakin mendaftar?',
                        middleText: '-',
                        textConfirm: 'Konfirmasi',
                        textCancel: 'Batal',
                        confirmTextColor: Colors.white,
                        onConfirm: () {
                          Get.offAllNamed('/success');
                        }
                    );
                  },
                  child: Text('Konfirmasi'))
            ],
          ),
          )
      );
    }
  }

}
