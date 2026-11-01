import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controller extends GetxController {
  // soal 1
  final tkb = TextEditingController();

  var daftar = <String>[
    'Apela'
  ].obs;

  void tambah() {
    if (tkb.text.isNotEmpty) {
      daftar.add(tkb.text);
      tkb.clear();
    }
  }

  // soal 2
  final nsiswa = <String, String> {
    'Ahmad Fajri': 'Hadir',
    'Keanu Mulya': 'Hadir',
    'Raka Sabari Pratama': 'Hadir',
    'Nagi Ahmad Syauqi': 'Hadir',
    'Mirza Yamadwipa': 'Hadir'
  }.obs;

  void hapus(String k){
    nsiswa.remove(k);
  }

  // soal 3

  final antrian = <int> [

  ].obs;

  int nomor = 1;

  void tambantrian () {

    antrian.add(nomor);
    nomor += 1;
  }

  void remove () {
    antrian.clear();
    nomor = 1;
  }

  void panggil () {
    if (antrian.isEmpty) {
      Get.snackbar(
          'Error!',
          'List Kosong',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 2)
      );
    } else {
      antrian.remove(antrian.first);
    }
  }


  // soal 4

  final belumselesai = <String> [

  ].obs;

  final selesai = <String> [

  ].obs;

  final tugasfield = TextEditingController();

  void tambahtugas () {
    if (tugasfield.text.isEmpty || belumselesai.contains(tugasfield.text)) {
      Get.snackbar(
          'Error!',
          'Tugas tidak boleh kosong atau sama',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: Duration(seconds: 2)
      );
    } else {
      belumselesai.add(tugasfield.text);
      Get.snackbar(
          'Berhasil!',
          'Tugas berhasil dibuat',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white,
          duration: Duration(seconds: 2)
      );
    }
  }

  void tandaiselesai (String judul) {
    selesai.add(judul);
    belumselesai.remove(judul);
  }

  void hapus1 (String judul) {
    selesai.remove(judul);
  }

  // soal 5
  final keranjang = <int>[

  ].obs;

  void beli (int harga) {
    keranjang.add(harga);
  }

  void kosongkan () {
    keranjang.clear();
  }

  int get total => keranjang.fold(0, (jumlah, harga) => jumlah + harga);
  int get jumlahItem => keranjang.length;
}