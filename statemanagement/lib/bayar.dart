import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/controller.dart';

class bayar extends StatelessWidget {
  const bayar({super.key});

  @override
  Widget build(BuildContext context) {
    final Controllerlogin c = Get.put(Controllerlogin());
    final usern = Get.parameters['user'] ?? '';
    final mtd = Get.parameters['metode'] ?? '-';

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: c.logout,
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat Datang $usern!',
            style: TextStyle(
              fontSize: 30
            ),),
            Text(
              'Metode pembayaran: $mtd',
              style: TextStyle(
                  fontSize: 30
              ),
            )
          ],
        ),
      )
    );
  }
}
