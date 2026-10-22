import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {

    final nama = Get.parameters['nama'] ?? '-';
    final umur = Get.parameters['umur'] ?? '-';
    final alamat = Get.parameters['alamat'] ?? '-';

    return Scaffold(
      appBar: AppBar(
          title: Text('Biodata'),
          centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
                'Nama    : $nama',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Umur    : $umur',
                style: TextStyle(
                    fontSize: 16
                )),
            SizedBox(height: 8),
            Text(
                'Alamat  : $alamat',
                style: TextStyle(
                    fontSize: 16
                )),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Notifikasi',
                  'Biodata $nama berhasil ditampilkan!',
                  snackPosition: SnackPosition.BOTTOM,
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
                backgroundColor: Colors.blue
              ), child: Text('Notifikasi (Snackbar)',
              style: TextStyle(
                  color: Colors.white
              )),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    child: Wrap(
                      children: [
                        ListTile(
                          title: Text('Bagikan Biodata'),
                          onTap: () => Get.back(),
                        ),
                        ListTile(
                          title: Text('Cetak Biodata'),
                          onTap: () => Get.back(),
                        ),
                      ],
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
                backgroundColor: Colors.blue
              ), child: Text('Opsi lain (Bottom sheet)',
                style: TextStyle(
                color: Colors.white
            )
            )
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: 'Konfirmasi Hapus',
                  middleText: 'Apakah Anda yakin ingin menghapus data $nama?',
                  textConfirm: 'Ya',
                  textCancel: 'Tidak',
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    Get.back();
                    Get.snackbar('Sukses', 'Data $nama berhasil dihapus');
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                minimumSize: Size.fromHeight(45),
              ), child: Text('Hapus data (Dialog)',
                style: TextStyle(
                    color: Colors.white
                )),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.back(),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ), child: Text('Kembali (Get.back)'),
            ),
          ],
        ),
      ),
    );
  }
}