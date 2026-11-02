import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modellatandlkpd/Model/Contoh_Model.dart';

class contohController extends GetxController {
  final teNamaProduk = TextEditingController();
  final teHarga = TextEditingController();

  final produklist = <produk>[].obs;

  @override
  void onInit() {
    super.onInit();
    produklist.assignAll(
      [
       produk(
           id: 1,
           nama: 'Kopi',
           harga: 15000
       ),
        produk(
            id: 2,
            nama: 'Teh',
            harga: 10000
        ),
      ]
    );

  }
  void tambah () {
    String namaProduk = teNamaProduk.text;
    double hargaPro = double.parse(teHarga.text);
    produklist.add(
        produk(id: DateTime.now().millisecondsSinceEpoch, nama: namaProduk, harga: hargaPro)
    );
  }
  void hapus (int id) => produklist.removeWhere((e) => e.id == id);
}