import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIST DAN MAP'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'LKPD List',
              style: TextStyle(
                fontSize: 25
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/belanja');
                },
                child: Text('Soal 1: Daftar Belanja')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/absensi');
                },
                child: Text('Soal 2: Absensi Kelas')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/kasir');
                },
                child: Text('Soal 3: Antrian Kasir')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/todolist');
                },
                child: Text('Soal 4: To-Do List dengan Dua Daftar')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/belanjaon');
                },
                child: Text('Soal 5: Keranjang Belanja')
            ),
            SizedBox(height: 10),
            Text(
              'LKPD Map',
              style: TextStyle(
                  fontSize: 25
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/soal1');
                },
                child: Text('Soal 1: Tampilkan Semua Data Map ke List UI (Katalog Kategori Produk)')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/soal2');
                },
                child: Text('Soal 2: Tambah Baris Baru (Manajemen Keranjang Belanja)')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/soal3');
                },
                child: Text('Soal 3: Ubah Data Berdasarkan Key (Pembaruan Stok Barang)')
            ),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/soal4');
                },
                child: Text('Soal 4: Hapus Data Berdasarkan Key (Manajemen Daftar Kontak / Bookmark)')
            ),
          ],
        ),
      ),
    );
  }
}
