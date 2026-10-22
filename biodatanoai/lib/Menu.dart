import 'package:biodatanoai/Eskul.dart';
import 'package:biodatanoai/catalog_Page.dart';
import 'package:biodatanoai/controller.dart';
import 'package:biodatanoai/dialog.dart';
import 'package:biodatanoai/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final noaicontroller c = Get.put(noaicontroller());

    final ids = 45;
    final kat = 'olaharaga';
    final pen = 'Sinta';


    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        actions: [
          IconButton(onPressed: (){
            c.Botshet();
          }, icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.to(catalog());
                }, child: Text('Soal 1: Lihat Katalog')),
            ElevatedButton(
                onPressed: (){
                  Get.to(login_page());
                }, child: Text('Soal 2: Login')),
            ElevatedButton(
                onPressed: () {
                  c.Botshet();
                },
                child: Text('Soal 3: Urutkan')),
            ElevatedButton(
                onPressed: () {
                  Get.to(dialog());
                },
                child: Text('Soal 4: Dialog Konfirmasi Hapus dan Alur Navigas')),
            ElevatedButton(
                onPressed: () {
                  Get.to(eskul());
                },
                child: Text('Soal 5: Alur Pendaftaran dengan Named Route dan Passing Data')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/detail?id=$ids&kategori=$kat&penulis=$pen');
                },
                child: Text('Soal 6: Mengirim Data Lewat Query String')),
          ],
        ),
      ),
    );
  }
}
