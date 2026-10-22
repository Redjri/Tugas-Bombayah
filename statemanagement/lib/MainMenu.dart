import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement/TokoController.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final c = Get.find<tokoController>();

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments ?? {'username': 'Tamu', 'metode': 'Belum dipilih'};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: c.logout,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            Text(
              'Selamat datang, ${arg['username']}!',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Metode Pembayaran: ${arg['metode']}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}