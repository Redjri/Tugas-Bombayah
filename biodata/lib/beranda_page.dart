import 'package:biodata/Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BerandaPage extends StatelessWidget {
  BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tokoController control = Get.put(tokoController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Get.offAllNamed('/login'),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Isi biodata',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            TextField(
              onChanged: (value) => control.vnama.value = value,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              onChanged: (value) => control.vumur.value = value,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Umur'),
            ),
            TextField(
                onChanged: (value) => control.valamat.value = value,
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: control.lihatBiodata,
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ), child: Text('Lihat Biodata'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.toNamed('/tentang'),
              style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ), child: Text('Tentang aplikasi'),
            ),
          ],
        ),
      ),
    );
  }
}