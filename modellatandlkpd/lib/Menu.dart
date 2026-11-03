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
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal3'),
                  child: Text('Soal 3: Ubah Atribut Model Reaktif Tunggal (Profil Pengguna)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal4'),
                  child: Text('Soal 4: Hapus Model dari List Berdasarkan ID (Daftar Keranjang Belanja)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal5'),
                  child: Text('Soal 5: Hitung Total Berdasarkan Status Keterangan (Sistem Kelulusan Siswa)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal6'),
                  child: Text('Soal 6: Hitung Akumulasi Total Harga (Kalkulator Kasir Restoran)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal7'),
                  child: Text('Soal 7: Toggle / Ubah Boolean pada Item Model (Daftar Pengingat / Checklist)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal8'),
                  child: Text('Soal 8: Bersihkan Seluruh Data List Model (Reset Pencarian / Clear All)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal9'),
                  child: Text('Soal 9: Hitung Rata-Rata Nilai Properti Model (Rating Pengguna)')
              ),
              ElevatedButton(
                  onPressed: () => Get.toNamed('/soal10'),
                  child: Text('Soal 10: Penggabungan Massal / Batch Add List Model (Fetch Data dari Server)')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
