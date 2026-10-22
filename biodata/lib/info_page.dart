import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:  Text('Info'),
          centerTitle: true
      ),
      body: Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Halaman ini menggantikan halaman Tentang Aplikasi lewat Get.off().',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed('/beranda'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ),
              child: Text('Ke beranda dari awal (Get.offAll)'),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () => Get.back(),
              style: OutlinedButton.styleFrom(
                minimumSize:  Size.fromHeight(45),
              ),
              child:  Text('Kembali (Get.back)'),
            ),
          ],
        ),
      ),
    );
  }
}