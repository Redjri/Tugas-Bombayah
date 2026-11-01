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
        child: Expanded(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  'LKPD List',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
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
              SizedBox(height: 15),
              Text(
                'LKPD Map',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
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
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal5');
                  },
                  child: Text('Soal 5: Jumlah Total Salah Satu Keterangan / Filter Spesifik (Sistem Absensi Siswa)')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal6');
                  },
                  child: Text('Soal 6: Hitung Jumlah Keseluruhan Nilai dalam Map (Kalkulator Total Belanja)')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal7');
                  },
                  child: Text('Soal 7: Upsert (Update jika Ada, Insert jika Belum Ada) pada Rating Pengguna')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal8');
                  },
                  child: Text('Soal 8: Bersihkan Seluruh Data Map (Reset Filter / Clear Cart')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal9');
                  },
                  child: Text('Soal 9: Hitung Rata-rata Nilai dari Map (Sistem Penilaian Mahasiswa)')
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/soal10');
                  },
                  child: Text('Soal 10: Salin dan Update Masal (Batch Add / Merge Map)')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
