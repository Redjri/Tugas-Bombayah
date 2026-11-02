import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contoh'),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/contoh1'),
                  child: Text('Contoh 1')
              ),
              SizedBox(height: 20),
              Text('LKPD Model'),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal1'),
                  child: Text('Soal 1: Tampilkan List Model ke Grid UI (Katalog Resep Makanan)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal2'),
                  child: Text('Soal 2: Tambah Model Baru ke List (Aplikasi Catatan Tugas / To-Do List)')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
