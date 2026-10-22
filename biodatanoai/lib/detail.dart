import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? ids = Get.parameters['id'];
    String kat = Get.parameters['kategori'] ?? '-';
    String pen = Get.parameters['penulis'] ?? '-';

    int? id = int.tryParse(ids ?? '');

    if (id == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Get.defaultDialog(
          title: 'Gagal',
          middleText: 'Data parameter tidak valid atau kosong!',
          textConfirm: 'Kembali',
          confirmTextColor: Colors.white,
          onConfirm: () {
            Get.back();
            Get.back();
          },
          barrierDismissible: false,
        );
      });
      return  Scaffold(
        body: SizedBox(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title:  Text('Detail Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Id: $id', style:  TextStyle(fontSize: 18)),
            Text('Kategori: $kat', style:  TextStyle(fontSize: 18)),
            Text('Penulis: $pen', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}