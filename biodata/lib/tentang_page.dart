import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Tentang aplikasi'),
          centerTitle: true
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aplikasi Biodata dibuat untuk belajar route management pada GetX.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offNamed('/info'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ),
              child: Text('Halaman info (Get.off)'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.back(),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
              ),
              child: Text('Kembali (Get.back)'),
            ),
          ],
        ),
      ),
    );
  }
}